terraform {
  backend "gcs" {
    bucket = "linen-adapter-342115-backend"
    prefix = "custom-vm"
  }
}