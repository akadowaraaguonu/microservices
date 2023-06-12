resource "google_compute_network" "my_network" {
  name                    = "my-network"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "my_subnet" {
  name          = "my-subnet"
  ip_cidr_range = "10.0.0.0/24"
  network       = google_compute_network.my_network.self_link
  region        = "us-central1"
}

resource "google_container_cluster" "my_cluster" {
  // ...
  network    = google_compute_network.my_network.name
  subnetwork = google_compute_subnetwork.my_subnet.name
}
