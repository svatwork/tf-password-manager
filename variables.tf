variable "password_manager_compute_instance" {
    default = "passbolt"
}

variable "password_manager_compute_network" {
    default = "passbolt-network"
}

variable "password_manager_compute_firewall" {
    default = "passbolt-firewall"
}
variable "password_manager_database" {
    default = "passbolt-db"
}

variable "password_manager_database_instance" {
    default = "passbolt-db-instance"
}

variable "password_manager_database_sql_user_name" {
    default = "admin"
}

variable "password_manager_database_sql_password" {
    default = "4393"
}

variable "project" {
    default = "passbolt-256114"
}

variable "region" {
    default = "europe-west4"
}

variable "zone" {
    default = "europe-west4-a"
}