terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  access_key = var.access_key
  secret_key = var.secret_key
}

data "aws_ami" "ubuntu" {
  most_recent = true // gives the latest from the serach list
  owners      = ["amazon"] // mandatory

  // refer -> https://docs.aws.amazon.com/cli/latest/reference/ec2/describe-images.html for filter attributes
  filter {
    name = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-*"] // ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-20240321
  }

  filter {
    name = "architecture"
    values = ["x86_64"]
  }
}

// Uncomment the below blocks to verify the image id and name, run terraform plan
/**
output "ubuntu_ami_id" {
  value = data.aws_ami.ubuntu.id
}

output "ubuntu_ami_name" {
  value = data.aws_ami.ubuntu.name
}
**/

resource "aws_instance" "example" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  subnet_id = "subnet-03a4aa540d5f78092"
  tags = var.ec2_tags
}
