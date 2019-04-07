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

variable "BASE_PREFIX" {
  description = "The prefix applied to all resource names."
}

variable "APP_PREFIX" {
  description = "The prefix applied to all aplication names."
}

variable "TAG_COST_CENTER" {
  description = "Value of the cost center"
}

variable "TAG_OWNER" {
  description = "Name of the client side owner"
}

variable "ENVIRONMENT" {
  description = "Enviroment to deploy"
}

variable "RESOURCE_GROUP_NAME" {
  description = "Name of the resource group"
}

variable "VNET_NAME" {
  description = "Name of client vNet"
}

variable "VSUBNET_NAME" {
  description = "Name of the new subnet"
}

variable "VSUBNET_ADDRESS_PREFIX" {}

variable "STORAGE_REPLICATION" {
  description = "Type of storage replication"
}

variable "STORAGE_ACCOUNT_TIER" {
  description = "Type of storage tier"
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

variable "STREAM_ANALITYCS_API_VERSION" {}

variable "STREAM_ANALITYCS_SKU" {}

variable "STREAM_ANALITYCS_JOB_TYPE" {}

variable "STREAM_ANALITYCS_STREAMING_UNITS" {}
