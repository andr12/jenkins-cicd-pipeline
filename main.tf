module "gke" {
  source = "./gke"
  name   = "petclinic-cluster"
}
module "cloud_sql" {
  source            = "./cloud_sql"
  name              = "my-instance"
  DATABASE_NAME     = "${credentials("MYSQL_DATABASE")}"
  DATABASE_USER     = "${credentials("MYSQL_USER")}"
  DATABASE_PASSWORD = "${credentials("MYSQL_PASSWORD")}"
 }
module "artifact_registry" {
  source = "./artifact_registry"
  name   = "my-repo"
}  