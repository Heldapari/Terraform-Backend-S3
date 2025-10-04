provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "Parimala" {
  instance_type = "t2.micro"
  ami = "ami-052064a798f08f0d3"  
  subnet_id = "subnet-0fd1ec148028a06f5"  
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "pari-s3-123"  
}

resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
