terraform {
  backend "s3" {
    bucket = "terraform-state-save-on-s3"
    key    = "global/s3/terraform.tfstate"
    region = "eu-west-2"

    dynamodb_table = "terraform-locks"
    encrypt        = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"

}
