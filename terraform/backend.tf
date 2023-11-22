form {
  backend "gcs" {
    bucket  = "mydevproje1bucket"
    prefix  = "dev/terraform/state/main"
  }
}

