provider "google" {
  project = var.project_id
  region  = var.region
}

resource "random_id" "bucket_suffix" {
  byte_length = 4
}

resource "google_storage_bucket" "bucket" {
  name          = "${var.bucket_name}-${random_id.bucket_suffix.hex}"
  location      = var.region
  storage_class = "STANDARD" # Required for GCP Always Free Tier
  force_destroy = true

  uniform_bucket_level_access = true
}
