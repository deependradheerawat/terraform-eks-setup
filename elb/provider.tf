provider "aws" {
  region = "us-west-1"
}

terraform {
	required_providers {
		aws = {
	    version = "~> 5.7.0"
		}
  }
}
