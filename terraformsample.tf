terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"
}

# Configure the AWS Provider
provider "aws" {
  access_key = "AKIASTKEXLSFL6KNRZG4"
  secret_key = "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"
  region = "us-east-1"
}

# Create a VPC
resource "aws_instance" "app_server"{
  ami ="ami-830c94e3"
  instance_type = "t2.micro"

  tags = {
    Name= "Terraform Demo"
  }
}