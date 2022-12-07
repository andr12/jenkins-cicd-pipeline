resource "random_id" "db_name_suffix" {
  byte_length = 4
}

resource "google_sql_database_instance" "my-instance" {
  name = "var.name-${random_id.db_name_suffix.hex}"
  database_version = var.database_version
  region = var.region
  settings {
    tier = "db-g1-small"
    ip_configuration {
      ipv4_enabled = true
    }
  }
}

resource "google_sql_database" "database" {
  name     = "petclinic"
  instance = google_sql_database_instance.my-instance.name
  depends_on = [google_sql_database_instance.my-instance]
}

resource "google_sql_user" "users" {
  name     = "petclinic"
  instance = google_sql_database_instance.my-instance.name
  password = "petclinic"
  depends_on = [google_sql_database_instance.my-instance]
}