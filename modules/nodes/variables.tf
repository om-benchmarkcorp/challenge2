variable "node_name"{
	default = "node"
	description = "name of the node being created"
}

variable "zone"{
	type = string
	default = "us-west1-c"
}


variable "subnet_name"{
	description = "the name of the subnetwork where the instance nodes will be located"
}