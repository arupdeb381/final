terraform {
  backend "s3" {
    bucket = "tfbucket381"
    key    = "Dev/tf.tfstate"
    region = "us-east-1"
    encrypt = true
    use_lockfile = true
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>6.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# Create a VPC
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
}


#Create S3 bucket 
resource "aws_s3_bucket" "example" {
  bucket = "arupdeb831-1"

  tags = {
    Name        = "day03"
    Environment = "Dev"
  }
}