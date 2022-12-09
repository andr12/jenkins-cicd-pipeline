terraform {
  backend "gcs" {
    bucket      = "terraform-halka-bucket"
    prefix      = "terraform/state"
    credentials = env.JSON_KEY
  }
}