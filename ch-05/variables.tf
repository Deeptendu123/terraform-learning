variable "access_key" {
  type = string
  description = "AWS access key"
  default = "AKIAZZQSPEPXTP4BMFOJ"
  sensitive = true
}

variable "secret_key" {
  type = string
  description = "AWS access key"
  default = "ffSka5t+yJpmKyYrsdGAhKI/OLCUvXC10XBu066E"
  sensitive = true
}

variable "ec2_tags" {
  type = map
  description = "Tag for ec2"
  default = {
    "name" = "My EC2"
  }
}