variable "prefix" {
  type    = string
  default = "vm"
}

variable "location" {
  type    = string
  default = "westeurope"
}

variable "vm_size" {
  type    = string
  default = "Standard_B2ms"
}

variable "vm_disk_size" {
  type    = number
  default = 8
}

variable "admin_username" {
  type    = string
  default = "user01"
}

variable "admin_password" {
  type    = string
}

variable "ssh_key" {
  type    = string
  default = "~/.ssh/id_rsa.pub"
}

variable "address_space" {
  type    = string
  default = "10.0.0.0/16"
}

variable "subnet_prefix" {
  type    = string
  default = "10.0.0.0/24"
}

