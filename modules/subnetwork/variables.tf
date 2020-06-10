variable "subnet_name" {
  default = "subnet"
  description = "name of the subnetwork created"
}
variable "ip_cidr_range" {
  default = "10.2.0.0/16"
}
variable "region" {
  default = "us-west1"
  description = "the region where the subnetwork is located"
}
variable "network_name"{
  description = "the VPC network where the subnet is located"
}


