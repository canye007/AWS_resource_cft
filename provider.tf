terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  profile = "devops-terraform-project"
}

provider "aws" {
  alias = "us-west-2"
  profile = "aws_prog_access_cred"
}