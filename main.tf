provider "aws" {
 region = "us-east-1"
 }
 resource "aws_instance" "one" {
 count=5 
 ami = "ami-07bc5cc4add81dad9"
 instance_type = "t2.medium"
 tags = {
 Name = var.instance_names[count.index]
 }
}
variable "instance_names" {
default = ["jenkins", "nexus", "tomcat-1", "tomcat-2","monitor_server"]
}
