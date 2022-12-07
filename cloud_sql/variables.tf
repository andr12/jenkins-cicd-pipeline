variable "name" {
  type = string
  description = "Instance name"
  default = "my-instance"
}
variable "database_version" {
  type = string
  description = "Database version -&gt; MYSQL_5_6, POSTGRES_12, SQLSERVER_2017_STANDARD..."
  default = "MYSQL_5_7"
}
variable "region" {
  type = string
  description = "The region where we want to create the database instances, it should be the project region"
  default = "us-central1"
}