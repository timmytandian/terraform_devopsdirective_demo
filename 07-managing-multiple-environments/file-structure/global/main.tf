terraform {
  # Use Terraform Cloud as the backend
  cloud {
    organization = "timmytandian"

    workspaces {
        name = "terraform_devopsdirective_demo"
    }
  }

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

# Route53 zone is shared across staging and production
data "aws_route53_zone" "primary" {
  name = "timmytandian.com"
}
