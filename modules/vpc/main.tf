# To create vpc
resource "aws_vpc" "myvpc" {
  cidr_block = var.cidr_block
  tags = {
    Name = "custom_vpc"
  }
}

#To create websubnet
resource "aws_subnet" "web-subnet" {
  vpc_id = aws_vpc.myvpc.id
  cidr_block = var.web_cidr
  tags = {
    Name = "websubnet"
  }
  map_public_ip_on_launch = true
  availability_zone = var.web-az
}

#To create appsubnet
resource "aws_subnet" "app-subnet" {
  vpc_id = aws_vpc.myvpc.id
  cidr_block = var.app_cidr
  tags = {
    Name = "appsubnet"
  }
  map_public_ip_on_launch = false
  availability_zone = var.app-az
}

#To create dbsubnet
resource "aws_subnet" "db-subnet" {
  vpc_id = aws_vpc.myvpc.id
  cidr_block = var.db_cidr
  tags = {
    Name = "dbsubnet"
  }
  map_public_ip_on_launch = false
  availability_zone = var.db-az
}

#To create subnet-group
resource "aws_subnet_group" "my-subnet-group"{
  name = "my-subnet-grp"
  subnet_ids = [aws_subnet.appsubnet.id, aws_subnet.dbsubnet.id]
}

output "vpc_id" {
  value = aws_vpc.myvpc.id
}
output "web-sub-id"{
    value = aws_subnet.web-subnet.id
}
output "app-sub-id" {
    value = aws_subnet.app-subnet.id
}
output "db-sub-id"{
    value = aws_subnet.db-subnet.id
}
  
output "subnet-grp-id"{
    value = aws_subnet_group.my-subnet-group.id
}
  