resource "aws_instance" "tfInstance" {
    ami = var.amiId
    instance_type = var.insType
    key_name = var.keyId
    tags = {
      Name = "Terraform Instance"
    }
  
}
output "pub_ip"{
    value = aws_instance.tfInstance.public_ip 
}

