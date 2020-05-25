terraform {
  required_version = ">= 0.12.0"
}

provider "aws" {
  version = "~> 2.23"
  region  = "us-east-1"
}
