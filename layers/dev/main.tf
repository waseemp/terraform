provider "aws" {
  region = "us-east-1"
  profile = "terraform"
}

module "ec2_module" {
    source = "../../modules"
}

module "sg_module" {
    source = "../../modules"
}

module "subnet_module" {
    source = "../../modules"
}

module "vpc_module" {
    source = "../../modules"
}

module "nlb_module" {
    source = "../../modules"
}


