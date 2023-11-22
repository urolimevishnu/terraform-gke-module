terraform {
  backend "gcs" {
    bucket  = "mydevproje1bucket"
    prefix  = "dev/terraform/state/gke"
  }
}

