provider "aws" {
  region     = "us-east-1"
  access_key  = var.access_key
  secret_key =  var.secret_key
}
resource "aws_instance" "test_instance" {
  instance_type = "t3_micro"
  ami           = "ami-0cdaca59d3d65d47c"
  security_group = aws_security_group.test_sg.name

  tags = {
    Name = "my-instance"
  }
}

Variable.tf

variable "access_key" {
  default = "####"
  description = "access key token of test instance"
}
variable "secret_key" {
  default = "##########"
  description = "secret key token for instance"
}
