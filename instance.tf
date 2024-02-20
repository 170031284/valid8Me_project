
# Create a security group
resource "aws_security_group" "ec2_security_group" {
  name        = "ec2-security-group"
  description = "Allow incoming traffic on ports 22 and 80"
  
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Launch an EC2 instance
resource "aws_instance" "ec2_instance" {
  ami             = "ami-0440d3b780d96b29d"  # Replace with the appropriate Amazon Linux 2 AMI ID
  instance_type   = "t2.micro"
  subnet_id       = var.subnet_id
  key_name        = var.key_pair_name
  #security_group  = [aws_security_group.ec2_security_group.id]
  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              amazon-linux-extras install nginx1.12 -y
              service nginx start
              chkconfig nginx on
              EOF


  tags = {
    Name = "EC2-Instance"
  }
}
