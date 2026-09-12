resource "aws_instance" "example" {
  for_each      = toset(var.instance_names)
  ami           = var.ami_id
  instance_type = var.instance_type
  region        = var.aws_region

  tags = {
    Name = each.value
  }
}
