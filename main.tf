resource "azuread_application" "app" {
  name            = var.app_name
  homepage        = "http://${var.app_name}-application"
  identifier_uris = var.identifier_urls != [] ? var.identifier_urls : ["http://${var.app_name}-application"]
  reply_urls      = var.reply_urls != [] ? var.reply_urls : ["http://${var.app_name}-application"]
}

resource "azuread_service_principal" "app_spn" {
  application_id = azuread_application.app.application_id
}

resource "random_password" "spn_password" {
  length      = 16
  min_upper   = 1
  min_lower   = 1
  min_numeric = 1
  min_special = 1

  keepers = {
    spn_id = azuread_service_principal.app_spn.id
  }
}

resource "azuread_service_principal_password" "spn_password" {
  service_principal_id = azuread_service_principal.app_spn.id
  value                = var.generate_spn_password ? random_password.spn_password.result : var.spn_password
  end_date_relative    = "87600h"
}