resource "aws_instance" "ec2_example" {

   ami           = var.ami_id
   instance_type =  var.instance_type
   region                   = var.aws_region
   count = var.instance_count

   tags = {
           Name        = "My New EC2"
           Environment = "dev"
           Project     = "Learning"
   }
}