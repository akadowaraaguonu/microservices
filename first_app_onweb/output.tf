# Define outputs of your Terraform configuration
output "public_ip" {
  description = "Public IP address of the instance"
  value       = aws_instance.example_instance.public_ip
}
