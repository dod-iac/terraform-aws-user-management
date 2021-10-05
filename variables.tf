variable "admin_group_name" {
  description = "Name of the Admin Group"
  type        = string
  default     = "admin"
}

variable "basic_group_name" {
  description = "Name of the Basic Group"
  type        = string
  default     = "basic"
}

variable "alumni_group_name" {
  description = "Name of the Alumni Group"
  type        = string
  default     = "alumni"
}

variable "admin_users" {
  description = "Set of Admin IAM Users with tags."
  type        = map(any)
  default     = {}
}

variable "basic_users" {
  description = "Set of Basic IAM Users with tags."
  type        = map(any)
  default     = {}
}

variable "alumni_users" {
  description = "Set of Alumni IAM Users with tags."
  type        = map(any)
  default     = {}
}

variable "tags" {
  description = "Tags for resources"
  type        = map(string)
  default     = {}
}
