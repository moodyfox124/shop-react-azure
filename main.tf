terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 1.1.0"
}

variable "app_id" {
  type        = string
  default     = ""
  description = "client_id"
}

variable "display_name" {
  type        = string
  default     = ""
  description = "value"
}

variable "password" {
  type        = string
  default     = ""
  description = "client_secret"
}

variable "tenant" {
  type        = string
  default     = ""
  description = "tenant_id"
}

variable "subscription_id" {
  type        = string
  default     = ""
  description = "subscription_id"
}

provider "azurerm" {
  features {}

  client_id       = var.app_id
  client_secret   = var.password
  tenant_id       = var.tenant
  subscription_id = var.subscription_id
}

resource "azurerm_resource_group" "front_end_rg" {
  name     = "rg-frontend-sand-ne-001"
  location = "northeurope"
}
