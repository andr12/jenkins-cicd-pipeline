variable "name" {
  type = string
  description = "Instance name"
  default = "mysql2"
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

variable "del_protection" {
  description = "Protection of deleting"
  type        = bool
  default     = "false"
}

variable "database_name" {
  description = "Database name"
  type        = string
  sensitive   = true
}

variable "database_user" {
  description = "Database username"
  type        = string
  sensitive   = true
  }

variable "database_user_password" {
  description = "Database user password"
  type        = string
  sensitive   = true
}