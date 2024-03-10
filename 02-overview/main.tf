terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_instance" "example" {
  ami           = "ami-039e8f15ccb15368a" # Amazon Linux 2023 AMI, ap-northeast-1
  instance_type = "t2.micro"
}
