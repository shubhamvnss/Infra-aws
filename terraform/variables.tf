variable "public_key_path" {
  description = "Path to the public key file used to create a new key pair (if applicable)"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "key_pair_name" {
  description = "Name of the existing EC2 key pair in AWS"
  type        = string
}

variable "aws_region" {
  description = "Name of the existing EC2 key pair in AWS"
  type        = string
}

