resource "aws_security_group" "test_sg" {
  name = "my_security_group"
  description = "allow the http port of incoming traffic"
  vpc_id = aws_vpc.my_vpc.vpc_id

  ingress {
     protocol= "tcp"
     from_port= 80
     to_port=80
     description = "allow iod8iuajkDsinblound traffic"
     cidr_blocks = ["172.17.0.0/16"]
  }
}
