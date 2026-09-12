# ==========================================
# 1. AWS PROVIDER CONFIGURATION
# ==========================================
provider "aws" {
  region                   = var.aws_region
  shared_credentials_files = ["/Users/vm/Documents/AWS/credentials"]
  profile                  = "default"
}
#