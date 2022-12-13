module "gke" {
  source = "./gke"
  name   = "petclinic-cluster"
}
module "cloud_sql" {
  source            = "./cloud_sql"
  name              = "my-instance"
  DATABASE_NAME     = "${MYSQL_DATABASE}"
  DATABASE_USER     = "${MYSQL_USER}"
  DATABASE_PASSWORD = "${MYSQL_PASSWORD}"
 }
module "artifact_registry" {
  source = "./artifact_registry"
  name   = "my-repo"
}  