# ==========================================
# 2. EC2 INSTANCE RESOURCE
# ==========================================
resource "aws_instance" "my_ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = local.instance_name
  }
}

locals {
  instance_name = "My EC2 Instance"
}