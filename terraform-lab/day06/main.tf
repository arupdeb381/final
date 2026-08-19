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
  bucket = "arupdeb831-day06"

  tags = {
    Name        = local.bucket_name
    Environment = var.environment
  }
}