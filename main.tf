provider "google" {
  credentials = "${file("inframod-training-09efb368bf98.json")}"
  project     = "inframod-training"
  zone        = "us-central1-a"
}
resource "google_compute_instance" "def" {
  name         = "test"
  machine_type = "e2-medium"
  #zone         = "us-central1-a"
  count        = 2

  tags = ["xp", "lp"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  // Local SSD disk
  scratch_disk {
    interface = "SCSI"
  }

  network_interface {
    network = "default"
  }

}
