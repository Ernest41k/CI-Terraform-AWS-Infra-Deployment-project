provider "aws" {
  region = "us-east-2"
}

terraform {
  backend "s3" {
    bucket         = "tfstate-remote-backend-0003"
    key            = "jupiter/statefile"
    region         = "us-east-2"
    dynamodb_table = "jupiter-state-locking"
    encrypt        = true
  }
}

module "vpc" {
  source = "./vpc"
  vpc_cidr_block = var.vpc_cidr_block
  tags   = local.project_tags
}
