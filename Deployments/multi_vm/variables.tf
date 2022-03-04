 
variable "vm_name" {
  description = "Name for the vm being provisioned."
  type        = string
  default     = null
}

variable "machine_type" {
  type = string
}

variable "zone" {
  type = string
}

variable "project" {
  type = string
}
variable "num_vm" {
    type = number
}