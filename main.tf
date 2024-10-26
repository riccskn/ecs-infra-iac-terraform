provider "aws" {
  region = var.aws_region
}

# Call the VPC module
module "vpc" {
  source = "./vpc"

  vpc_cidr = var.vpc_cidr
  vpc_name = var.vpc_name
  subnet_cidr = var.public_subnet_cidrs

}