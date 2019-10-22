resource "google_compute_network" "password_manager_compute_network" {
    name = var.password_manager_compute_network
}

resource "google_compute_firewall" "password_manager_compute_firewall" {
    name = var.password_manager_compute_firewall
    network = google_compute_network.password_manager_compute_network.name

    allow {
        protocol = "tcp"
        ports = ["22", "80", "443"]
    }
}