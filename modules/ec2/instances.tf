resource "aws_instance" "phpapp" {
  ami           = var.ami_id
  count         = var.ec2_count
  instance_type = var.instance_type
  associate_public_ip_address = "true"
  subnet_id = var.subnet_id
  availability_zone = "ap-south-1a"

user_data = <<-EOF
            #!/bin/bash
            sudo apt update
            sudo apt-get install -y apache2
            sudo systemctl start apache2
            sudo systemctl enable apache2
            sudo bash -c 'echo I am your very first web server > /var/www/html/index.html'
            EOF  
  
  tags = {
        Name = "phpapp"
  }
}