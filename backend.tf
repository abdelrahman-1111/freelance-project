terraform {
    required_providers {
    aws = {
        source  = "hashicorp/aws"
        version = "~>3.0"
        }
    }

    backend "s3" {
        bucket = "terraform-state1223"
        key    = "statefile-locker"
        region = "us-east-1"
    }
}
