resource "aws_security_group" "websg" {
  name = "web-sg01"
  vpc_id = "${aws_vpc.prod-vpc.id}"
  ingress {
    protocol = "tcp"
    from_port = 443
    to_port = 443
    cidr_blocks = [ "0.0.0.0/0" ]
  }
  ingress {
      protocol = "tcp"
      from_port = 3389
      to_port = 3389
      cidr_blocks = [ "0.0.0.0/0"]  
  }
  ingress {
      protocol = "tcp"
      from_port = 22
      to_port = 22
      cidr_blocks = [ "0.0.0.0/0"]  
  }
}
