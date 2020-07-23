resource "aws_instance" "phpapp" {
  ami           = var.ami_id
  count         = var.ec2_count
  instance_type = var.instance_type
  associate_public_ip_address = "true"
  subnet_id = var.subnet_id
  availability_zone = "ap-south-1a"
  
  tags = {
        Name = "phpapp"
  }
}