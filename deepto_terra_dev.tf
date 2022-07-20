provider "aws" {
  access_key = ""
  secret_key = ""
  region     = "us-east-1"
}


resource "aws_s3_bucket" "deepto-terra-devs3" {
  bucket            = "deepto-terra-dev-buckets3"
  acl               = "private"

  tags = { 
    "Terraform" : "true"
  }
}


resource "aws_default_vpc" "default" {

  tags = {
   "Terraform" : "true"
  }
}


resource "aws_security_group" "dev_sec_grp" {
  name        = "dev_sec_grp"
  description = "http(s) inbound and outbound"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["127.127.127.127/32"]
  }
  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["127.127.127.127/32"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
 }

}


resource "aws_instance" "deepto_server_dev" {
  ami           = "ami-052efd3df9dad4825"
  instance_type = "t2.micro"

  vpc_security_group_ids = [aws_security_group.dev_sec_grp.id]

   tags = {
    "Terraform" : "true"
  }
}


resource "aws_eip" "deepto_server_dev_eip" {

   instance = aws_instance.deepto_server_dev.id

   tags = {
    "Terraform" : "true"
  }


}


data "aws_ami" "webserver_ami" {
  most_recent = true

  owners = ["amazon"]

  tags   = {
    "Terraform" : "true"
    Name   = "webserver"
    Deploy = "true"

  } 

}


resource "aws_instance" "web" {
  ami           = data.aws_ami.webserver_ami.id
  instance_type = "t2.micro"

}


resource "aws_eip" "web_eip" {

   instance = aws_instance.web.id

   tags = {
    "Terraform" : "true"
  }

}



