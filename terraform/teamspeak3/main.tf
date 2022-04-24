provider "google" {
  credentials = file(var.credentials_file)
  project     = var.project
  region      = var.region
  zone        = var.zone
}

resource "google_compute_instance" "vm_instance" {
  name         = "ts3-server"
  machine_type = "f1-micro"
  tags         = ["ts3"]

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
      size  = "10"
      type  = "pd-balanced"
    }
  }

  network_interface {
    network = "default"
    access_config {
    }
  }
}

resource "google_compute_firewall" "default" {
  name    = "ts3-firewall"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["10011", "30033"]
  }

  allow {
    protocol = "udp"
    ports    = ["9987"]
  }

  target_tags   = ["ts3"]
  source_ranges = ["0.0.0.0/0"]
}