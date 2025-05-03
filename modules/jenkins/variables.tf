variable "aws_region" {
  description = "The AWS region to deploy resources"
  type        = string
}

variable "key_pair_name" {
  description = "Name of the EC2 key pair for SSH access"
  type        = string
}

variable "public_key_path" {
  description = "Path to the public key file"
  type        = string
}

variable "ami_id" {
  description = "AMI ID to use for Jenkins EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "Instance type for Jenkins EC2"
  type        = string
}
