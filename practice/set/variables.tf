
#2.2 number variable type - We are going parameterized instance_count = 2

variable "instance_count" {
  description = "EC2 instance count"
  type        = number
  default     = 2
}

variable "instance_type" {
  type        = string
  description = "EC2 Instance Size"
  default     = "t3.micro"
}

variable "aws_region" {
  type        = string
  description = "AWS Region to deploy resources"
  default     = "us-east-2"
}

variable "ami_id" {
  type        = string
  description = "AMI ID for the EC2 instance (Ubuntu 24.04 LTS in eu-central-1)"
  default     = "ami-01c265752adadcdf8"
}