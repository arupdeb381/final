terraform {
  backend "s3" {
    bucket = "tfbucket381"
    key    = "Dev/tf.tfstate"
    region = "us-east-1"
    encrypt = true
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
resource "aws_vpc" "vpc01" {
  cidr_block = "10.0.0.0/16"
  tags = {
    "name" = "vpc01"
    "Environment" = "Dev"
  }

}
# Create Public subnet 
resource "aws_subnet" "public-snet" {
  vpc_id            = aws_vpc.vpc01.id
  cidr_block        = "10.0.1.0/24"
}

# Create Private subnet
resource "aws_subnet" "private-snet" {
  vpc_id            = aws_vpc.vpc01.id
  cidr_block        = "10.0.2.0/24"
}

#Create S3 bucket
resource "aws_s3_bucket" "example" {
  bucket = "day03-bucket-arup3810-terraform"

  tags = {
    Name        = "day03"
    Environment = "Dev"
  }
}

# 
