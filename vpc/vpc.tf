variable "vpc_cidr" {
  type = string
  description = "VPC cidr"
}

variable "vpc_name" {
  type = string
  description = "VPC name"
}

variable "subnet_cidr" {
  type = string
  description = "Public subnet cidr"
}

resource "aws_vpc" "main_vpc" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id = aws_vpc.main_vpc.id
  cidr_block = var.subnet_cidr

  tags = {
    Name = "public subnet"
   }
}

resource "aws_internet_gateway" "main_igw" {
  vpc_id = aws_vpc.main_vpc.id

  tags = {
    Name = "main-igw"
  }
}

resource "aws_route_table" "main_route_table" {
  vpc_id = aws_vpc.main_vpc.id

    route {
      cidr_block = "0.0.0.0/0"
      gateway_id = aws_internet_gateway.main_igw.id
  }
}