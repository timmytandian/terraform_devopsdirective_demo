terraform {
  backend "remote" {
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
