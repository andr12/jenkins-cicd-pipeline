module "gke" {
  source = "./gke"
  name   = "petclinic-cluster"
}
module "cloud_sql" {
  source            = "./cloud_sql"
  name              = "my-instance"
 }
module "artifact_registry" {
  source = "./artifact_registry"
  name   = "my-repo"
}  