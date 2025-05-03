provider "aws" {
  region = var.aws_region
}

module "jenkins" {
  source            = "./modules/jenkins"
  aws_region        = var.aws_region
  key_pair_name     = var.key_pair_name
  public_key_path   = var.public_key_path
  ami_id            = var.ami_id
  instance_type     = var.instance_type
}

output "jenkins_public_ip" {
  value = module.jenkins.jenkins_public_ip
}
