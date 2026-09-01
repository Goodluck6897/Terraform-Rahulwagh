# ==========================================
# CREDENTIALS VARIABLES (PROMPTED AT RUNTIME)
# ==========================================
variable "aws_access_key" {
  type        = string
  description = "Enter your AWS Access Key ID"
}

variable "aws_secret_key" {
  type        = string
  description = "Enter your AWS Secret Access Key"
  sensitive   = true # Hides input typing in the terminal prompt
}

# ==========================================
# CONFIGURATION VARIABLES (DEFAULT VALUES)
# ==========================================
variable "aws_region" {
  type        = string
  description = "AWS Region to deploy resources"
  default     = "us-east-2"
}

variable "ami_id" {
  type        = string
  description = "AMI ID for the EC2 instance (Ubuntu 24.04 LTS in eu-central-1)"
  default     = "ami-0ed930776bf7be2b7"
}

variable "instance_type" {
  type        = string
  description = "EC2 Instance Size"
  default     = "t2.micro"
}

variable "instance_name" {
  type        = string
  description = "Value for the Name tag of the EC2 instance"
  default     = "Terraform-Interactive-EC2"
}

