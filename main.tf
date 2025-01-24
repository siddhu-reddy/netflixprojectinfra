provider "aws"{
region="us-east-1"
}
resource "aws_instance" "one"{
  count=4
  ami="ami-043a5a82b6cf98947"
  instance_type="t2.medium"
  key_name="sid"
  vpc_security_group_ids=["sg-0b5c2cc26474761a8"]
  tags={
  name=var.instance_names[count.index]
  }
}
variable "instance_names" {
  default=["jenkins","nexus","tomcat-1","tomcat-2"]
}
