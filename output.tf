output "public_ip" {
  value = aws_instance.ec2-instance.public_ip
  description = "publuc-ip address of the instance"
}
