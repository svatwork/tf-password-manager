provider "google" {
  credentials = "serviceaccount.json"
  project = var.project
  region  = var.region
  zone = var.zone
}

provider "google-beta" {
  credentials = "serviceaccount.json"
  project = var.project
  region  = var.region
  zone = var.zone
}

resource "google_compute_instance" "password_manager_compute_instance" {
  name         = var.password_manager_compute_instance
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "gce-uefi-images/ubuntu-1804-lts"
    }
  }

  metadata_startup_script = <<EOF
    sudo apt update -y &&
    sudo apt upgrade -y &&
    sudo apt install docker.io -y
  EOF

  network_interface {
    network = google_compute_network.password_manager_compute_network.name
  
    access_config {
    // ephemeral IP
    }
  }
}