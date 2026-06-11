# Remote state for Terraform. See ../bootstrap.sh for the one-time setup.
terraform {
  backend "s3" {
    bucket       = "catchup-countdown-tfstate"
    key          = "catchup-site/terraform.tfstate"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true # Terraform 1.10+ native S3 state locking; no DynamoDB needed.
  }
}
