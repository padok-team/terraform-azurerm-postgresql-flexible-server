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
  description = "The Administrator Login for the PostgreSQL Flexible Server. Changing this forces a new PostgreSQL Flexible Server to be created."
}

variable "administrator_password" {
  type        = string
  description = "The Password associated with the administrator_login for the PostgreSQL Flexible Server."
  sensitive   = true
  default     = null
}

variable "pg_version" {
  type        = string
  description = "The version of PostgreSQL Flexible Server to use. Possible values are 11, 12 and 13.  Changing this forces a new PostgreSQL Flexible Server to be created."
  default     = "13"
}

variable "sku_name" {
  type        = string
  description = "The SKU Name for the PostgreSQL Flexible Server. The name of the SKU follows the tier + name pattern (e.g. GP_Standard_D2s_v3, MO_Standard_E4s_v3). High availability is not supported with burstable compute tier."
  default     = "GP_Standard_D2s_v3"
}

variable "storage_mb" {
  type        = number
  description = "The max storage allowed for the PostgreSQL Flexible Server, in megabytes. Possible values are 32768, 65536, 131072, 262144, 524288, 1048576, 2097152, 4194304, 8388608, 16777216, and 33554432."
  default     = 32768
}

variable "backup_retention_days" {
  type        = number
  description = "The backup retention days for the PostgreSQL Flexible Server. Possible values are between 7 and 35 days."
  default     = 30
}

variable "geo_redundant_backup_enabled" {
  type        = bool
  description = "Is Geo-Redundant backup enabled on the PostgreSQL Flexible Server. Defaults to true. Changing this forces a new PostgreSQL Flexible Server to be created."
  default     = true
}

variable "delegated_subnet_id" {
  type        = string
  description = "The ID of the virtual network subnet to create the PostgreSQL Flexible Server. The provided subnet should not have any other resource deployed in it and this subnet will be delegated to the PostgreSQL Flexible Server, if not already delegated. Changing this forces a new PostgreSQL Flexible Server to be created."
  default     = null
}

variable "private_dns_zone_id" {
  type        = string
  description = "The ID of the private dns zone to create the PostgreSQL Flexible Server. Changing this forces a new PostgreSQL Flexible Server to be created."
  default     = null
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags which should be assigned to the PostgreSQL Flexible Server."
  default = {
    "terraform" : "true"
  }
}
