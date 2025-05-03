provider "aws" {
  region = var.aws_region
}

# EC2 Key Pair for Jenkins Instance
resource "aws_key_pair" "jenkins_key" {
  key_name   = var.key_pair_name
  public_key = file(var.public_key_path)
}

# Security Group for Jenkins Instance
resource "aws_security_group" "jenkins_sg" {
  name = "jenkins-sg"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Jenkins EC2 Instance
resource "aws_instance" "jenkins" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = aws_key_pair.jenkins_key.key_name
  vpc_security_group_ids = [aws_security_group.jenkins_sg.id]

  tags = {
    Name = "jenkins-master"
  }
}

# Output Jenkins Public IP
output "jenkins_public_ip" {
  value = aws_instance.jenkins.public_ip
}
