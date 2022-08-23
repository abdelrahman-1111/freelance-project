terraform {
    required_providers {
    aws = {
        source  = "hashicorp/aws"
        version = "~>3.0"
        }
    }

    backend "s3" {
        bucket = "terraform-state"
        key    = "terraform.tfstate"
        region = "us-east-1"
    }
}
