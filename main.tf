locals {
  env = "callback-dev"
  project_id = "third-current-338811"
  region = "us-east4"
  branch = "main"
}
provider "google" {
  region = local.region
  project = local.project_id
}
resource "google_storage_bucket" "sample-storage" {
  name = "sample-bucket-en-${local.project_id}"
  location = local.region
  project = local.project_id
  uniform_bucket_level_access = true
  force_destroy = false  # TODO: remove after testing 
}

