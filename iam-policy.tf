provider "aws" {
   region = "us-east-1"
}
resource "aws_iam_policy" "s3_full_access" {
   name = "s3_full_access"
   description = "iam policy for full s3 access"
   policy = jsonencode({
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "s3:*",
                "s3-object-lambda:*"
            ],
            "Resource": "*"
        }
    ]
}
}
