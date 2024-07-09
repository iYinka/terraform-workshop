resource "aws_key_pair" "terraform-demo" {
  key_name   = "terraform-demo"
  public_key = file("terraform-demo.pub")
}

resource "aws_instance" "my-instance" {
  count         = var.INSTANCE_COUNT
  ami           = var.AMI[var.REGION]
  instance_type = var.INSTANCE_TYPE
  key_name      = aws_key_pair.terraform-demo.key_name
  subnet_id     = "subnet-0e4e5d490c78c6d1c"

  tags = {
    Name = "Terraform-${count.index + 1}"
  }
}