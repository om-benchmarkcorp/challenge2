variable "network_name" {
  default = "vpc-network"
  description = "the name of the vpc network created"
}
variable "auto_create_subnetworks" {
    type = bool
    default = false
    description = "ensures the vpc network doesn't make subnetworks automatically"
}
variable "description" {
  type = string
  default = ""
  description = "explains what this resource is used for"
}

