terraform {
  required_version = ">= 0.12.0"
  backend "s3" {
    bucket = "my-s3-bucket"
    key    = "states/my-state.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  version = "~> 2.23"
  region  = "us-east-1"
}
