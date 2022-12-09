terraform {
  backend "gcs" {
    bucket      = "terraform-halka-bucket"
    prefix      = "terraform/state"
    credentials = "./or2-msq-epm-cedu-t1iylu-05293d904b28.json"
  }
}