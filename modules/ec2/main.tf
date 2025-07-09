provider "aws" {
    region = "ap-south-1"
}

resource "aws_instance" "ec2"{
    ami_id = var.ami_id
    instance_type = "t2.micro"
    vpc_security_group_ids = [aws_security_group.security_group.id]
    user_data = <<EOF
    
#!/bin/bash
# Update packages
yum update -y

# Install Apache
yum install -y httpd

# Start and enable Apache
systemctl start httpd
systemctl enable httpd

# Create a simple HTML file
echo "<html><body><h1>Hello from EC2!</h1></body></html>" > /var/www/html/index.html
EOF

tags {
    Name = "Instance A"
}
}

resource "aws_security_group" "security_group" {
  name        = "uc1-sg"
  description = "Allow HTTP traffic only from ALB"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}