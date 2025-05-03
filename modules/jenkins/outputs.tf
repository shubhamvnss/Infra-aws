output "jenkins_public_ip" {
  description = "The public IP address of the Jenkins instance"
  value       = aws_instance.jenkins.public_ip
}
