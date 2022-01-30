resource "aws_security_group" "kafka-securuty" {
  name        = "kafka-securuty"
  description = "kafka-securuty"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    # Please restrict your ingress to only necessary IPs and ports.
    # Opening to 0.0.0.0/0 can lead to security vulnerabilities.
    cidr_blocks = "${var.cdirs_acesso_remoto}"
  }
  tags = {
    Name = "ssh"
  }
}