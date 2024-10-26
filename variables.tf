variable "aws_region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "vpc_name" {
  description = "VPC name"
  default = "my-app-vpc"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "private_subnet_cidrs" {
  description = "CIDR blocks for the private subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for the public subnets"
  type        = string
  default     = "10.0.3.0/24"
}

variable "ecs_instance_type" {
  description = "EC2 instance type for ECS tasks"
  default     = "t3.micro"
}

variable "desired_capacity" {
  description = "Desired capacity for the ECS service"
  default     = 2
}

variable "max_capacity" {
  description = "Maximum capacity for the ECS service"
  default     = 5
}

variable "repository_name" {
  description = "ECR repository name"
  default = "my-app-demo"
}
