 
module "multi_vm" {
  source = "../../modules/multi_vm"
  project = var.project
  zone = var.zone
  machine_type = var.machine_type
  #the number of instances to be created wwith the same config
  num_vm = var.num_vm
  vm_name =  var.vm_name
}