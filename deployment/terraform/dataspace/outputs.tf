output "connector_name" {
  value = local.connector_name
}

output "key_vault" {
  value = azurerm_key_vault.registrationservice.name
}

output "app_insights_connection_string" {
  value     = azurerm_application_insights.dataspace.connection_string
  sensitive = true
}

output "registration_service_url" {
  value = "http://${azurerm_container_group.registration-service.fqdn}:${local.edc_default_port}"
}

output "dataspace_did_host" {
  value = length(azurerm_storage_blob.dataspace_did) > 0 ? azurerm_storage_account.dataspace_did.primary_web_host : null
}

output "gaiax_did_host" {
  value = length(azurerm_storage_blob.gaiax_did) > 0 ? azurerm_storage_account.gaiax_did.primary_web_host : null
}
