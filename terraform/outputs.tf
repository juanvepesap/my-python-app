output "resource_group_name" {
  description = "El nombre del grupo de recursos creado"
  value       = azurerm_resource_group.example.name
}

output "storage_account_name" {
  description = "El nombre de la cuenta de almacenamiento creada"
  value       = azurerm_storage_account.example.name
}
