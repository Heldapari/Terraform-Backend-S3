terraform {
  backend "s3" {
    bucket         = "Pari-s3-123" # change this
    key            = "pari/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}
