terraform {
  required_version = ">= 1.5.0"

  backend "s3" {
    bucket         = "mahesh-terraform-state-bucket"  # S3 bucket for Terraform state
    key            = "envs/dev/terraform.tfstate"     # Path inside the bucket for the state file
    region         = "us-east-1"
    dynamodb_table = "terraform-lock"                 # DynamoDB table for state locking
    encrypt        = true                              # Enable server-side encryption
  }
}
