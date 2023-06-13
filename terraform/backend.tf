terraform {
  backend "gcs" {
    bucket  = "postapp-bucket"
    prefix  = "terraform.tfstate"
    # project = "POSTAPP"
    # region  = "us-central1"
  }
}
