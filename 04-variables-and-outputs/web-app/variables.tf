# General Variables

variable "region" {
  description = "Default region for provider"
  type        = string
  default     = "ap-northeast-1"
}

# EC2 Variables

variable "ami" {
  description = "Amazon machine image to use for ec2 instance"
  type        = string
  default     = "ami-039e8f15ccb15368a" # Amazon Linux 2023 AMI, ap-northeast-1
}

variable "instance_type" {
  description = "ec2 instance type"
  type        = string
  default     = "t2.micro"
}

# S3 Variables

variable "bucket_prefix" {
  description = "prefix of s3 bucket for app data"
  type        = string
}

# Route 53 Variables

variable "domain_zone" {
  description = "Domain zone ID of the Route53"
  type        = string
}

variable "domain_webroot" {
  description = "Domain name (root) of the website"
  type        = string
}

# RDS Variables

variable "db_name" {
  description = "Name of DB"
  type        = string
}

variable "db_user" {
  description = "Username for DB"
  type        = string
}

variable "db_pass" {
  description = "Password for DB"
  type        = string
  sensitive   = true
}


