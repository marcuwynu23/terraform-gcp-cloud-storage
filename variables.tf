variable "project_id" {
  description = "The ID of the project in which to provision resources."
  type        = string
}

variable "region" {
  description = "The region in which to provision resources. To stay within GCP Free Tier, use: us-west1, us-central1, or us-east1."
  type        = string
  default     = "us-central1"

  validation {
    condition     = contains(["us-west1", "us-central1", "us-east1"], var.region)
    error_message = "Region must be one of the GCP Free Tier regions: us-west1, us-central1, or us-east1."
  }
}

variable "bucket_name" {
  description = "The base name of the bucket. A random suffix will be appended to ensure global uniqueness."
  type        = string
}
