provider "aws" {
  region     = "us-east-1"
  access_key = "AKIA3TD2SE6SURSVGAJJ"
  secret_key = "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"
}
resource "aws_s3_bucket" "my_bucket" {
   bucket= "testbuck1211"
   acl= "private"
   
   versioning {
   enabled= true
}
}
