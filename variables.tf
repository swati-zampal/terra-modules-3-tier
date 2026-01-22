variable "my-region" {
  default = "us-east-1"
}
variable "vpc_cidr" {}
variable "web_cidr" {}
variable "web-az" {
  default = "us-east-1a"
}
variable "app_cidr" {}
variable "app-az" {
  default = "us-east-1b"
}

variable "db-az"{
  default = "us-east-1c"
}

variable "db_cidr"{}
variable "ins-type"{}
variable "myami" {}
variable "mykey" {}
variable "user" {}
variable "password" {}
variable "storage" {}
variable "db-ins-type" {}