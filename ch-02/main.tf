terraform {
  backend "http" {
    
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  access_key = "AKIAZZQSPEPXTP4BMFOJ"
  secret_key = "ffSka5t+yJpmKyYrsdGAhKI/OLCUvXC10XBu066E"
}

resource "aws_instance" "example" {
  ami           = "ami-0c7217cdde317cfec" //"ami-0c7217cdde317cfec" ami-011899242bb902164 # Ubuntu 20.04 LTS // us-east-1
  instance_type = "t2.micro"
  subnet_id = "subnet-03a4aa540d5f78092"
  tags = {
    Name = "My EC21"
  }
}
