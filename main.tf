provider "aws"{
region="us-east-1"
}
resource "aws_instance" "one"{
  count=4
  ami="ami-043a5a82b6cf98947"
  instance_type="t2.medium"
  key_name="sid"
  vpc_security_group_ids=["sg-003550d9d3300d12f"]
  tags={
  name=var.instance_name[count.index]
  }
}
variable "instance_name" {
  default=["jenkins","nexus","tomcat-1","tomcat-2"]
}
