# ==========================================
# 1. AWS PROVIDER CONFIGURATION
# ==========================================
provider "aws" {
  region     = var.aws_region
  shared_credentials_files = ["/Users/vm/Documents/AWS/credentials"]
  #/Users/vm/Documents/AWS
  #access_key = var.aws_access_key
  #secret_key = var.aws_secret_key
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

