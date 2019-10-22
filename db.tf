resource "random_id" "db_name_suffix" {
  byte_length = 4
}

resource "google_sql_database" "password_manager_database" {
    name = var.password_manager_database
    instance = google_sql_database_instance.password_manager_database_instance.name
}

resource "google_sql_database_instance" "password_manager_database_instance" {
    name = join("-", [var.password_manager_database_instance, random_id.db_name_suffix.hex])
    
    settings {
        tier = "db-f1-micro"

        ip_configuration {
            ipv4_enabled = true
            authorized_networks {
                value = google_compute_instance.password_manager_compute_instance.*.network_interface.0.access_config.0.nat_ip[0]
            }
        }
    }
}

resource "google_sql_user" "password_manager_database_sql_user_name" {
    name = var.password_manager_database_sql_user_name
    instance = google_sql_database_instance.password_manager_database_instance.name
    host = google_compute_instance.password_manager_compute_instance.*.network_interface.0.access_config.0.nat_ip[0]
    password = var.password_manager_database_sql_password
}