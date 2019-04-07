variable "AZURE_SUBSCRIPTION_ID" {
  description = "The Azure subscription ID."
}

variable "AZURE_CLIENT_ID" {
  description = "The Azure Service Principal app ID."
}

variable "AZURE_CLIENT_SECRET" {
  description = "The Azure Service Principal password."
}

variable "AZURE_TENANT_ID" {
  description = "The Azure Tenant ID."
}

variable "AZURE_REGION" {
  description = "The Azure region to create things in."
  default     = "West Europe"
}

variable "ENVIRONMENT" {
  description = "Enviroment to deploy"
}

variable "RESOURCE_GROUP_NAME" {
  description = "Name of the resource group"
}

variable "SQL_SERVER_NAME" {
  description = "Name of the Sql Server"
}

variable "SQL_SERVER_VERSION" {
  description = "Version of the Sql Server"
}

variable "SQL_ADMIN_ID" {
  description = "Sql admin username"
}

variable "SQL_PASSWORD" {
  description = "Sql admin password"
}

variable "SQL_DB_NAME" {
  description = "Sql database name"
}