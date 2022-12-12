resource "random_id" "db_name_suffix" {
  byte_length = 4
}

resource "google_sql_database_instance" "instance" {
  name = var.name
  database_version = var.database_version
  region = var.region
  deletion_protection = var.del_protection
  settings {
    tier = "db-g1-small"
    ip_configuration {
      ipv4_enabled = true
    }
  }
}

resource "google_sql_database" "database" {
  name     = "${var.database_name}"
  instance = google_sql_database_instance.instance.name
  depends_on = [google_sql_database_instance.instance]
}

resource "google_sql_user" "users" {
  name     = "${var.database_user}"
  instance = google_sql_database_instance.instance.name
  password = var.database_password
  depends_on = [google_sql_database_instance.instance]
}