variable "resource_group_name" {
  description = ""
  type        = string
}

variable "owner" {
  description = ""
  type        = string
}

variable "location" {
  description = ""
  type        = string
  default     = "West Europe"
}
variable "subnet_id_system" {
  description = ""
  type        = string
}
variable "subnet_id_user" {
  description = ""
  type        = string
}
