output "instance_ip" {
  description = "Public IP-адреса створеного сервера"
  value       = aws_instance.ec2_terraform.public_ip
}
