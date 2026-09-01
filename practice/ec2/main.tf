# ==========================================
# 1. AWS PROVIDER CONFIGURATION
# ==========================================
provider "aws" {
  region                   = var.aws_region
  shared_credentials_files = ["/Users/vm/Documents/AWS/credentials"]
  profile = "default"
}

# ==========================================
# 2. EC2 INSTANCE RESOURCE
# ==========================================
resource "aws_instance" "my_ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}

