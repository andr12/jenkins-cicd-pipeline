module "gke" {
  source = "./gke"
  name   = "petclinic-cluster"
}
module "cloud_sql" {
  source            = "./cloud_sql"
  name              = "my-instance"
  DATABASE_NAME     = "${var.DATABASE_NAME}"
  DATABASE_USER     = "${var.DATABASE_USER}"
  DATABASE_PASSWORD = "${var.DATABASE_PASSWORD}"
 }
module "artifact_registry" {
  source = "./artifact_registry"
  name   = "my-repo"
}  