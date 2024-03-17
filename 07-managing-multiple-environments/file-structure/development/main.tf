terraform {
  # Terraform Cloud as remote backend
  cloud {
    organization = "timmytandian"

    workspaces {
      name = "terraform_devopsdirective_demo-development"
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

variable "db_pass" {
  description = "password for database"
  type        = string
  sensitive   = true
}

locals {
  environment_name = "development"
}

module "web_app" {
  source = "../../../06-organization-and-modules/web-app-module"

  # Input Variables
  bucket_prefix    = "web-app-data-${local.environment_name}"
  domain_zone      = "timmytandian.com"
  domain_webroot   = "${local.environment_name}.tf-demo.timmytandian.com"
  environment_name = local.environment_name
  instance_type    = "t2.micro"
  create_dns_zone  = false
  db_name          = "${local.environment_name}mydb"
  db_user          = "foo"
  db_pass          = var.db_pass
}
