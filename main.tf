provider "google"{
    version = "3.5.0"

    credentials = file("sandbox-2f84e3a1cbc8.json")
    project = "sandbox-279017"
    region = "us-west1"
}

module "vpc"{
    source = "./modules/vpc"
    network_name = var.name
    auto_create_subnetworks = var.auto_create_subnetworks
    description = var.description
}

module "subnetwork"{
    source = "./modules/subnetwork"
    subnet_name = var.name
    network_name = module.vpc.network_name
}