terraform {
  required_version = ">= 1.2.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.31.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "xyz"
}

resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket-e1aedc40545e"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    ManagedBy   = "Terraform"
    CreatedBy   = "Rubem"
    UpdatedAt   = "2022-09-20"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.b.id
  acl    = "private"
}
