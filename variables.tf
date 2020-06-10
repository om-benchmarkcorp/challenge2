variable "name"{
  default = "network"
}
variable "auto_create_subnetworks" {
  type = bool
  default = false
}
variable "description" {
  type = string
  default = ""
}

