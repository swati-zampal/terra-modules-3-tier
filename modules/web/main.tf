resource "aws_instance" "webserver"{
    ami = var.myami
    instance_type = var.ins-type
    key_name = var.mykey
    subnet_id = var.web-sub-id 
    vpc_security_group_ids = [var.web-sg-id]
    }
  output "web-inst-ip"{
    value = aws_instance.webserver
  }
