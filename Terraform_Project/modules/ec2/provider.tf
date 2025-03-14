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
  alias = "east"
  region = "us-east-1"
  profile = "devops-terraform-project"
}

provider "aws" {
  alias = "west"
  region = "us-west-1"
  profile = "aws_prog_access_cred"
}

provider "aws" {
  alias = "west2"
  region = "us-west-2"
  profile = "aws_prog_access_cred"
}