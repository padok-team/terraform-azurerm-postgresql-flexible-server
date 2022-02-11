output "this" {
  value       = azurerm_postgresql_flexible_server.this
  description = "The PostgreSQL flexible server"
}

output "administrator_password" {
  value       = azurerm_postgresql_flexible_server.this.administrator_password
  description = "The administrator password"
  sensitive   = true
}
