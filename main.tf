terraform {
  required_providers {
    aws = {
      version = "~> 5.52.0"
      source  = "hashicorp/aws"
    }
  }
  required_version = "~> 1.1.9"
}

provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type
  metadata_options {
     http_tokens = "required"
     } 

  root_block_device {
      encrypted = true
  }

  ebs_block_device {
    device_name = "/dev/sdg"
    volume_size = 5
    volume_type = "gp2"
    delete_on_termination = false
    encrypted = true
  }
   

  tags = {
    Name = "TerraformExampleInstance"
  }
}

