# Configure Terraform
terraform {
  required_providers {
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.47.0"
    }
  }
}

resource "azuread_application_registration" "example" {
  display_name = var.display_name
}

resource "azuread_application_password" "example" {
  application_id = azuread_application_registration.example.id
}
