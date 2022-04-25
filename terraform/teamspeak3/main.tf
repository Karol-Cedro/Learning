provider "google" {
  project = var.project
  region  = var.region
  zone    = var.zone
}

resource "google_compute_instance" "vm_ts3_instance" {
  name         = "ts3-server"
  machine_type = var.machine_type
  tags         = ["ts3"]

  boot_disk {
    initialize_params {
      image = var.image
      size  = var.disk_size
      type  = var.disk_type
    }
  }

  network_interface {
    network = "default"
    access_config {
    }
  }
}

resource "google_compute_instance" "vm_sinusbot_instance" {
  name         = "sinusbot"
  machine_type = var.machine_type
  tags         = ["sinusbot"]

  boot_disk {
    initialize_params {
      image = var.image
      size  = var.disk_size
      type  = var.disk_type
    }
  }

  network_interface {
    network = "default"
    access_config {
    }
  }
}

resource "google_compute_firewall" "ts3_rules" {
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

resource "google_compute_firewall" "sinusbot_rules" {
  name    = "sinusbot-firewall"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["8087"]
  }

  allow {
    protocol = "udp"
    ports    = ["9987"]
  }

  target_tags   = ["sinusbot"]
  source_ranges = ["0.0.0.0/0"]
}