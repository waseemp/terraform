resource "aws_instance" "tfvm" {
  count = 2
  ami = "ami-0d5eff06f840b45e9"
  instance_type = "t2.micro"
  key_name = "waseem"
  subnet_id = "${aws_subnet.prod-subnet-public-1.id}"
  vpc_security_group_ids = [ aws_security_group.websg.id ]
    tags = {
      Name = "WEB-demo"
    }
}
