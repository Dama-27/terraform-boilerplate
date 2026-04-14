# required_providers block

# This is where you define:
# - Which providers you use
# - Which versions you want

terraform {
  required_providers {

    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }

    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.0, < 3.0"
    }

  }
}

# This helps avoid "it worked yesterday but not today" problems (It happens because of the new version releases)
# Version control = stability