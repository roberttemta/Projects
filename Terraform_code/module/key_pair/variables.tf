
variable "region_name" {
  description = "Region where the infrastructure will be created"
  default = "us-east-1"
  type = string
}

variable "profile_name" {
  description = "The person that who create the infrastructure"
  default = "default"
  type = string
}

variable "key_name" {
  description = "The name of the key pair"
  default = ""
  type = string
}