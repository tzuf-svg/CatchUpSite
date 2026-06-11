#!/usr/bin/env bash
# One-time setup for the S3 bucket that holds Terraform remote state.
# Run this once before uncommenting the backend block in terraform/backend.tf.
#
# Requires: aws CLI configured (see `aws configure`).

set -euo pipefail

REGION="${REGION:-us-east-1}"
BUCKET="${TF_STATE_BUCKET:-catchup-countdown-tfstate}"

if aws s3api head-bucket --bucket "$BUCKET" 2>/dev/null; then
  echo "Bucket s3://$BUCKET already exists; skipping create."
else
  echo "Creating state bucket s3://$BUCKET in $REGION..."
  if [ "$REGION" = "us-east-1" ]; then
    aws s3api create-bucket --bucket "$BUCKET" --region "$REGION"
  else
    aws s3api create-bucket \
      --bucket "$BUCKET" \
      --region "$REGION" \
      --create-bucket-configuration "LocationConstraint=$REGION"
  fi
fi

echo "Enabling versioning..."
aws s3api put-bucket-versioning \
  --bucket "$BUCKET" \
  --versioning-configuration Status=Enabled

echo "Blocking all public access..."
aws s3api put-public-access-block \
  --bucket "$BUCKET" \
  --public-access-block-configuration \
    "BlockPublicAcls=true,IgnorePublicAcls=true,BlockPublicPolicy=true,RestrictPublicBuckets=true"

echo "Enabling default encryption (AES256)..."
aws s3api put-bucket-encryption \
  --bucket "$BUCKET" \
  --server-side-encryption-configuration \
    '{"Rules":[{"ApplyServerSideEncryptionByDefault":{"SSEAlgorithm":"AES256"}}]}'

echo "Denying non-TLS requests..."
aws s3api put-bucket-policy \
  --bucket "$BUCKET" \
  --policy "$(cat <<JSON
{
  "Version": "2012-10-17",
  "Statement": [{
    "Sid": "DenyInsecureTransport",
    "Effect": "Deny",
    "Principal": "*",
    "Action": "s3:*",
    "Resource": [
      "arn:aws:s3:::$BUCKET",
      "arn:aws:s3:::$BUCKET/*"
    ],
    "Condition": { "Bool": { "aws:SecureTransport": "false" } }
  }]
}
JSON
)"

cat <<EOF

Done. Next:
  1. Edit terraform/backend.tf and uncomment the backend block.
  2. cd terraform && terraform init -migrate-state
EOF
