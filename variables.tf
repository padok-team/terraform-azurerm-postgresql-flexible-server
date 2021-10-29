variable "name" {
  type        = string
  description = "The name which should be used for this PostgreSQL Flexible Server. Changing this forces a new PostgreSQL Flexible Server to be created."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the Resource Group where the PostgreSQL Flexible Server should exist. Changing this forces a new PostgreSQL Flexible Server to be created."
}

variable "location" {
  type        = string
  description = "The Azure Region where the PostgreSQL Flexible Server should exist. Changing this forces a new PostgreSQL Flexible Server to be created."
}

variable "administrator_login" {
  type        = string
  description = "The Administrator Login for the PostgreSQL Flexible Server. Required when create_mode is Default. Changing this forces a new PostgreSQL Flexible Server to be created."
}

variable "administrator_password" {
  type        = string
  description = "The Password associated with the administrator_login for the PostgreSQL Flexible Server. Required when create_mode is Default."
  sensitive   = true
}

variable "pg_version" {
  type        = string
  description = "The version of PostgreSQL Flexible Server to use. Possible values are 11,12 and 13. Required when create_mode is Default. Changing this forces a new PostgreSQL Flexible Server to be created."
  default     = "13"
}

variable "sku_name" {
  type        = string
  description = "The SKU Name for the PostgreSQL Flexible Server. The name of the SKU, follows the tier + name pattern (e.g. B_Standard_B1ms, GP_Standard_D2s_v3, MO_Standard_E4s_v3)."
}

variable "storage_mb" {
  type        = string
  description = "The max storage allowed for the PostgreSQL Flexible Server. Possible values are 32768, 65536, 131072, 262144, 524288, 1048576, 2097152, 4194304, 8388608, 16777216, and 33554432"
}
