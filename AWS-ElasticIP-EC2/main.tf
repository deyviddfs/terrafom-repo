provider "aws" {
  region  = "us-east-1"
}

resource "aws_instance" "dev" {
  ami = "ami-0af961a0e0ef080b3"
  instance_type = "t2.large"
  key_name = "terraform-aws"
  tags = {
    Name = "kafka-security"
  }
  vpc_security_group_ids = ["${aws_security_group.kafka-securuty.id}"]
}





