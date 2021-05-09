resource "google_compute_instance" "mannycompute1" {
  name         = var.c_name
  machine_type = var.m_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.image
    }
  }


  network_interface {
    # A default network is created for all GCP projects
    network = var.network
    access_config {
    }
  }

  #metadata = {
  #  ssh-keys = "emanuelburgess:${file(var.script_loc)}"
  #}

  metadata_startup_script = "${file(var.b_script)}"
}

resource "google_compute_instance" "mannycompute2" {
  name         = var.c_name2
  machine_type = var.m_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.image
    }
  }


  network_interface {
    # A default network is created for all GCP projects
    network = var.network
    access_config {
    }
  }

  #metadata = {
  #  ssh-keys = "emanuelburgess:${file(var.script_loc)}"
  #}

  metadata_startup_script = "${file(var.b_script2)}"
}
