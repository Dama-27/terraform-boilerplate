# First you need to have knowledge about diffrent providers and how to use them
# ex1 - AWS
provider "aws" {
  region = "us-east-1"
}

# ex2 - Azure
provider "azurerm" {
  subscription_id = "your-azure-subscription-id"
  client_id       = "your-azure-client-id"
  client_secret   = "your-azure-client-secret"
  tenant_id       = "your-azure-tenant-id"
}

# ex3 - GCP
provider "google" {
  project = "your-gcp-project-id"
  region  = "us-central1"
}

# likewise you can use terraform with diffrent providers

# Use the documentations to find the required arguments for each provider (https://registry.terraform.io/browse/providers)
