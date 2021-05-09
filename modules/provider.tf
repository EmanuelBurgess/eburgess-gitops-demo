provider "google" {
  credentials = var.creds
  project     = var.project_name
  region      = var.region
  zone        = var.zone
}
