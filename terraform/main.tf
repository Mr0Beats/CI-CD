provider "aws" {
  region = var.aws_region
}

resource "aws_security_group" "sg_terraform" {
  name        = "devops-sg-terraform"
  description = "Security group created by Terraform"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 3000
    to_port     = 3000
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

resource "aws_instance" "ec2_terraform" {
  ami           = var.ami_id
  instance_type = "t2.micro"
  key_name      = var.key_name
  
  vpc_security_group_ids = [aws_security_group.sg_terraform.id]

  tags = {
    Name = "devops-lab-terraform"
  }
}
