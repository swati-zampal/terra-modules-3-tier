variable "cidr_block" {}
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
