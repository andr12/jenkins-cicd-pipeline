terraform {
  backend "gcs" {
    bucket      = "terraform-halka-bucket"
    prefix      = "terraform/state"
    credentials = "$JSON_KEY"
  }
}