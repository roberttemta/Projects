
variable "region_name" {
  default = "us-east-1"
  type = string
}

variable "profile_name" {
  default = "default"
  type = string
}

variable "allocatad_storage" {
  default = 10
  description = "the capacity of the database engine"
}

/*
variable "db_name" {
  default = ""
}
*/

variable "engine" {
  default = "mysql"
}

variable "engine_version" {
  default = "8.0"
}

variable "instance_class" {
  default = "db.t3.micro"
}

variable "username" {
  sensitive = true
}

variable "password" {
  sensitive = true
}

variable "parameter_group_name" {
  default = "mysql8.0"
}

variable "skip_final_snapshot" {
  default = true
}

variable "backup_retention_period" {
  default = "0"
}

variable "identifier" {
  default = "dev-database"
}

