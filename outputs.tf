output "azuread_application_password_id" {
  value = azuread_application_password.example.value
  sensitive = true
}
