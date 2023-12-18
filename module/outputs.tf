output "vnet_id" {
  description = "ID of Vnet"
  value       = data.azurerm_virtual_network.pe_vnet.id
}

output "subnet_id" {
  description = "ID of Subnet"
  value       = data.azurerm_subnet.pe_subnet.id
}

output "pe_name" {
  description = "Name of Private Endpoint"
  value       = azurerm_private_endpoint.private_endpoint.name
}

output "private_service_connection" {
  description = "Name of Private Service Connection"
  value       = local.private_service_connection_VV
}

output "private_dns_zone_group" {
  description = "Name of Private DNS zone group"
  value       = local.dns_zone_group_VV
}
