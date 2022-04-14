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

#TODO: add firewall rules