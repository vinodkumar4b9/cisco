provider "aws" {
access_key = "${var.aws_access_key}"
secret_key = "${var.aws_secret_key}"
region = "${var.aws_region}"
}

resource "aws_instance" "web_server" {
ami = "ami-0b69ea66ff7391e80"
instance_type = "t2.small"
user_data = "${file("install_apache.sh")}"
tags = {
        Name = "web-server"
    }
}