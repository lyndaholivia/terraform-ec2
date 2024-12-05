terraform {
  backend "s3" {
    bucket = "my-aws-s3-backend-9045"
    key    = "network/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform_lock"
  }
}