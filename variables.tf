variable "resource_group_location" {
  default     = "West Europe"
  description = "Location of the resource group"
}

variable "resource_group_name_prefix" {
  default     = "rg"
  description = "Test of the group assigned with a random ID"
}

variable "default_location" {
  default     = "West Europe"
  description = "Default location of resources"
}

variable "proj" {
  default     = "PoP"
  description = "Default name for project"
  type        = string
}

variable "storage_account_name" {
  type        = string
  description = "Storage Account Name in Azure"
}

variable "storage_container_name" {
  type        = string
  description = "Storage Container Name in Azure"
}