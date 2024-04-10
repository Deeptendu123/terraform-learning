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

variable "ec2_tags" {
  type = map
  description = "Tag for ec2"
  default = {
    "name" = "My EC2"
  }
}