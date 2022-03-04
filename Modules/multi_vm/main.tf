resource "google_compute_instance" "default" {
    count = var.num_vm
  name =  "${var.vm_name}-${count.index}"
  
  machine_type = var.machine_type #"e2-medium"
  zone         = var.zone #"us-central1-a"
  project = var.project #"linen-adapter-342115"

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  
  network_interface {
    network = "default"

  }

#   metadata = {
#     foo = "bar"
#   }

  metadata_startup_script = file("${path.module}/hello.sh")
# code to test:  sudo google_metadata_script_runner startup
  
}