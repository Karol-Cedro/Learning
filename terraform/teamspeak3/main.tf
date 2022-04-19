provider "google" {
  project = "teamspeak3-terraform"
  region  = "europe-central2"
  zone    = "europe-central2-a"
}

resource "google_compute_instance" "vm_instance" {
  name         = "ts3-server"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts "
      size = "10GB"
      type = "pd-balanced"
    }
  }

  network_interface {
    network = "default"
    tag ="ts3"
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

  target_tags = ["ts3"]
  source_ranges = [ "0.0.0.0/0" ]
}