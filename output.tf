output "app_application_id" {
  value = azuread_application.app.application_id
}

output "app_object_id" {
  value = azuread_application.app.object_id
}

output "spn_id" {
  value = azuread_service_principal.app_spn.id
}

output "spn_application_id" {
  value = azuread_service_principal.app_spn.application_id
}

output "spn_object_id" {
  value = azuread_service_principal.app_spn.object_id
}

output "spn_display_name" {
  value = azuread_service_principal.app_spn.display_name
}

output "spn_passowrd_id" {
  value = azuread_service_principal_password.spn_password.id
}

output "spn_passowrd" {
  sensitive = true
  value = var.generate_spn_password ? random_password.spn_password.result : var.spn_password
}