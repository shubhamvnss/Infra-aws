variable "aws_region" {
  description = "The AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "key_pair_name" {
  description = "Name of the EC2 key pair for SSH access"
  type        = string
  default     = "jenkins-key"
}

variable "public_key_path" {
  description = "Path to the public key file"
  type        = string
  default     = "~/.ssh/id_rsa.pub"
}

variable "ami_id" {
  description = "AMI ID to use for Jenkins EC2 instance"
  type        = string
  default     = "ami-0fc5d935ebf8bc3bc" # Change as necessary
}

variable "instance_type" {
  description = "Instance type for Jenkins EC2"
  type        = string
  default     = "t2.micro"
}
