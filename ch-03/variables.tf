variable "access_key" {
  type = string
  description = "AWS access key"
  default = "###################"
  sensitive = true
}

variable "secret_key" {
  type = string
  description = "AWS access key"
  default = "###################"
  sensitive = true
}

variable "ec2_ami_id" {
  type = string
  description = "AMI id for ec2"
  default = "ami-0c7217cdde317cfec"
}

variable "ec2_tags" {
  type = map(string)
  description = "Tag for ec2"
  default = {
    Name = "My EC2"
  }
}