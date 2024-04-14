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
  access_key = "#############"
  secret_key = "#############"
}

resource "aws_instance" "example" {
  ami           = "ami-0c7217cdde317cfec" //"ami-0c7217cdde317cfec" ami-011899242bb902164 # Ubuntu 20.04 LTS // us-east-1
  instance_type = "t2.micro"
  tags = {
    Name = "My EC2"
  }
}
