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

variable "vpc_security_group_ids" {
  type = set(string)
  description = "VPC seccurity ids"
  default = ["sg-0834cb805a6353469"]
}