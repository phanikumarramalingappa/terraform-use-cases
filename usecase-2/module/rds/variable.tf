variable "db_identifier" {
  type        = string
  description = "DB Name"
}

variable "db_engine" {
  type        = string
  description = "DB Engine"
}

variable "db_instance_class" {
  type        = string
  description = "DB instance type"
}

variable "db_allocated_storage" {
  type        = string
  description = "DB storage"
}

variable "db_username" {
  type        = string
  description = "DB Username"
}

variable "db_password" {
  type        = string
  description = "DB Password"
}

variable "security_group_ids" {
  type        = list(string)
  description = "Security group ID's"
}

variable "multi_az" {
  type        = string
  description = "Availability Zone's enable/disable"
  default     = false
}

variable "tags" {
  type        = map(string)
  description = "Tags"
  default     = {}
}

variable "db_subnet_group_name" {
  type = string
}

variable "private_subnet_ids" {
  type = list(string)
}

variable "name" {
  type        = string
  description = "RDS DB name"
}