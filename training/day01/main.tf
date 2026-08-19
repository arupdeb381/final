terraform {
  backend "s3" {
    bucket = "tfbucket381"
    key    = "training/tf-day01.tfstate"
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

resource "aws_instance" "srv01" {
  ami           = "ami-0332d564d76dbd8d6"
  instance_type = "t3.micro"

  tags = {
    Name = "server01"
  }
}
