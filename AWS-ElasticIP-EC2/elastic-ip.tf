resource "aws_eip" "kafka" {
  instance = aws_instance.dev.id
  vpc      = true
}