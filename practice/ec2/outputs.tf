# ==========================================
# INFRASTRUCTURE OUTPUTS
# ==========================================
output "instance_id" {
  description = "The ID of the newly created EC2 instance"
  value       = aws_instance.my_ec2.id
}

output "instance_public_ip" {
  description = "The public IP address of the EC2 instance"
  value       = aws_instance.my_ec2.public_ip
}

