resource "aws_instance" "demo" {
  ami                         = "ami-0230bd60aa48260c6"
  associate_public_ip_address = true
  availability_zone           = "us-east-1d"
  instance_type               = "t2.micro"
  ipv6_address_count          = 0
  key_name                    = "ec2-keypair"
  monitoring                  = false
  security_groups             = ["launch-wizard-3"]
  subnet_id                   = "subnet-021d51033b04d11af"
  tags = {
    Name = "Imported server"
    env  = "dev"
    Team = "devops"
  }
}