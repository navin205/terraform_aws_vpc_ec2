resource "aws_vpc" "terraformed_VPC" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = var.tenancy

  tags = {
    Name = "terraformed_VPC"
  }
}

resource "aws_subnet" "terraformed_VPC" {
  vpc_id     = var.vpc_id
  cidr_block = var.subnet_cidr
  availability_zone = "ap-south-1a"
  tags = {
    Name = "terraformed_VPC"
  }
}

output "vpc_id" {
  value = aws_vpc.terraformed_VPC.id
}

output "subnet_id" {
  value = aws_subnet.terraformed_VPC.id
}