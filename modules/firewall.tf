resource "google_compute_firewall" "allow_fw" {
  name        = var.fw_name
  description = "Creates firewall rule for target instances"
  network     = var.network

  allow {
    protocol = "tcp"
    ports    = ["80", "8080", "1000-2000"]
  }
}
