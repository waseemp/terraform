resource "aws_lb" "test" {
  name               = "test-lb-tf"
  internal           = false
  load_balancer_type = "network"
  subnets            = "aws_subnet.prod-subnet-public-1.id"

  enable_deletion_protection = true

  tags = {
    Environment = "production"
  }
}