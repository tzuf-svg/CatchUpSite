variable "region" {
  description = "AWS region for the S3 bucket (CloudFront is global)."
  type        = string
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "Globally-unique S3 bucket name that will host the site."
  type        = string
  default     = "catchup-countdown"
}

variable "github_owner" {
  description = "GitHub owner (user or org). Used to scope the OIDC trust policy."
  type        = string
  default     = "tzuf-svg"
}

variable "github_repo" {
  description = "GitHub repository name. Used to scope the OIDC trust policy."
  type        = string
  default     = "CatchUpSite"
}
