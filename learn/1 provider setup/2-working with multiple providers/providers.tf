# Working with multiple providers, I know it's a headache but most of the time you will stick to a single provider, BUTTTT

# First, understand that Terraform supports MANY providers
# (AWS, Azure, GCP, Kubernetes, Cloudflare, etc.)

# --------------------------------------------------
# Example 1 — AWS

provider "aws" {
  region = "us-east-1"
}

# --------------------------------------------------
# Example 2 — Azure

provider "azurerm" {
  features {}

  subscription_id = "your-azure-subscription-id"
  client_id       = "your-azure-client-id"
  client_secret   = "your-azure-client-secret"
  tenant_id       = "your-azure-tenant-id"
}

# NOTE:
# Never hardcode secrets like this in real projects. But I did, You don't have to.
# Use environment variables or secret managers.

# --------------------------------------------------
# Example 3 — GCP

provider "google" {
  project = "your-gcp-project-id"
  region  = "us-central1"
}

# --------------------------------------------------
# Summary

# You can mix multiple providers in one project.
# Example:
# - AWS for compute
# - Azure for identity
# - GCP for data

# Terraform = multi-cloud alpha boss

# Docs:
# https://registry.terraform.io/browse/providers