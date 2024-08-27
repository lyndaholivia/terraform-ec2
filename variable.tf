variable "aws_region" {
  description = "The AWS region to deploy the infrastructure."
  type        = string
  default     = "us-east-1"
}

variable "ami_id" {
  description = "The AMI ID to use for the EC2 instance."
  type        = string
  default     = "ami-0c55b159cbfafe1f0" # Example AMI ID for Amazon Linux 2 in us-east-1
}

variable "instance_type" {
  description = "The type of instance to create."
  type        = string
  default     = "t2.micro"
}
variable "s3_bucket_name" {
  description = "The name of the S3 bucket for Terraform state storage."
  type        = string
}

variable "dynamodb_table_name" {
  description = "The name of the DynamoDB table for state locking."
  type        = string
}

variable "environment" {
  description = "The environment for tagging (e.g., dev, staging, prod)."
  type        = string
  default     = "dev"
}
