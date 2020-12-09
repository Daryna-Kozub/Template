provider "aws" {
  region = "eu-west-2"
}
  
resource "aws_instance" "test_VM" {
  # CentOS Linux 6 x86_64 HVM EBS 1703_011
  ami           = "ami-017b0e29fac27906b" 
  instance_type = "t2.small"
  availability_zone = "eu-west-2a"

  tags {
    Name = "smoketerrafort"
  }
}
