provider "google"{
    version = "3.5.0"

    credentials = file("sandbox-ba24fabf4dd1.json")
    project = "sandbox-279017"
    region = "us-west1"
}

module "vpc"{
    source = "./modules/vpc"
    network_name = var.network_name
    auto_create_subnetworks = var.auto_create_subnetworks
    description = var.description
}

module "subnetwork"{
    source = "./modules/subnetwork"
    network_name = module.vpc.network_name
}

module "autogroup"{
    source = "./modules/autogroup"
    network_name = module.subnetwork.subnet_name
}