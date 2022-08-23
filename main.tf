module "my_network" {
    source               = "./network"
    vpc_region           = var.region
    vpc_CIDR             = var.vpc_CIDR
    public_subnet1_CIDR  = var.public_subnet1_CIDR
    private_subnet1_CIDR = var.private_subnet1_CIDR
}