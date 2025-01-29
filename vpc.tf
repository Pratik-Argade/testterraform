resource "aws_vpc" "testvpc" {
   cidr_block = "172.17.0.0/16"

   tags = {
     Name = "testvpc"
   }
}

resource "aws_subnet" "testsubnet" {
   vpc_id = aws_vpc.testvpc.id
   cidr_block = "172.17.0.0/24"
   availability_zone = "us-east-1a"

   tags = {
     Name = "testsubnet"
   }
}
