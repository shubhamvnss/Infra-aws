terraform {
  backend "s3" {
    bucket         = "my-unique-terraform-state-bucket"   # Replace with your unique S3 bucket name
    key            = "terraform/state"                     # The key (path) where the state file is stored
    region         = "us-east-1"                           # The region where your S3 bucket is located
    dynamodb_table = "terraform-lock"                      # DynamoDB table for state locking
    encrypt        = true                                  # Enable encryption for the state file
  }
}
