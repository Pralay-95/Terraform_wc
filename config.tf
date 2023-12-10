terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.6.2"
    }
  }

#scenario 2 using s3 backend 
backend "s3" {
bucket = "pralay"
key = " terra-key.pem"
region = "us-west-2"

  }
}
provider "aws" {
    region = "${var.AWS_REGION}"
}

