variable "access_key" {
  type = string
  description = "AWS access key"
  default = "##################"
  sensitive = true
}

variable "secret_key" {
  type = string
  description = "AWS access key"
  default = "##################"
  sensitive = true
}

variable "ec2_ami_id" {
  type = string
  description = "AMI id for ec2"
  default = "ami-0c7217cdde317cfec"
}

variable "subnet_id" {
  type = string
  description = "Subnet Id"
  default = "subnet-05f8b8bd95c6bae79"
}

variable "vpc_security_group_ids" {
  type = set(string)
  description = "VPC seccurity ids"
  default = ["sg-079707e9a7f3e2c6c"]
}

variable "ec2_tags" {
  type = map
  description = "Tag for ec2"
  default = {
    "name" = "My EC2"
  }
}