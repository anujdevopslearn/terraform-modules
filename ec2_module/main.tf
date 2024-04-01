resource "aws_instance" "jenkins_instance" {
  instance_type = "t2.micro"
  vpc_security_group_ids = [ "sg-0d0233f3a1ce3cfc1" ]
  tags = {
    Name = "Terraform Module"
  }
  key_name = var.key_name
  subnet_id = "subnet-060281c1ceda4698b"
  ami = var.ami_id
}

variable "key_name" { 
	type = string
	description = "Provide Key pair name"
}

variable "ami_id" { 
	type = string
	description = "Provide AMI ID Name"
}
