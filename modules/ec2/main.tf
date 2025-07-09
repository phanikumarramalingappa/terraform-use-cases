provider "aws" {
    region = "ap-south-1"
}

resource "aws_instance" "ec2"{
    ami = "ami-0d03cb826412c6b0f"
    instance type = "t2.micro"
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
}