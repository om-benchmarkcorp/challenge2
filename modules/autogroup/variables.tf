variable "auto_name"{
	default = "node-autoscaler"
	description = "name of the autoscaling group"
}

variable "templ_name"{
	default = "my-instance-template"
	description = "name of the instance template"
}

variable "tpool_name"{
	default = "my-target-pool"
	description = "name of the target pool for the instance group manager"
}

variable "igm_name"{
	default = "my-igm"
	description = "name of the instance group manager"
}

variable "zone"{
	type = string
	default = "us-central1-c"
}