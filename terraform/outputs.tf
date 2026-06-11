output "cloudfront_domain" {
  description = "Public hostname of the CloudFront distribution."
  value       = aws_cloudfront_distribution.site.domain_name
}

output "cloudfront_distribution_id" {
  description = "CloudFront distribution ID, used by the deploy workflow to create invalidations."
  value       = aws_cloudfront_distribution.site.id
}

output "bucket_name" {
  description = "S3 bucket holding the site files."
  value       = aws_s3_bucket.site.id
}

output "github_actions_role_arn" {
  description = "IAM role ARN to set as the AWS_ROLE_TO_ASSUME repo variable in GitHub."
  value       = aws_iam_role.github_actions.arn
}
