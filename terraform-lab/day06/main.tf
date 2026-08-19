terraform {
  backend "s3" {
    bucket = "tfbucket381"
    key    = "Dev/tfday05.tfstate"
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

# Define Variable
variable "environment" {
  default = "dev"
  type = string  
}

variable "region" {
  default = "us-east-1"
  type = string  
}


locals {
  bucket_name = "${var.environment}-bucket"
  vpc_name = "${var.environment}-vpc"
}


# Create a VPC
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
  region = var.region

  tags = {
    Name = local.vpc_name
    Environment = var.environment
  }
}

#Create S3 bucket 
resource "aws_s3_bucket" "example" {
  bucket = "arupdeb831-day05"

  tags = {
    Name        = local.bucket_name
    Environment = var.environment
  }
}

output "vpc_id" {
  value = aws_vpc.example.id
}

output "s3_id" {
  value = aws_s3_bucket.example.id
}