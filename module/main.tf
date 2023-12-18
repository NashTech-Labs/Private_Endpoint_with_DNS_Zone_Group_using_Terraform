################
# Locals Block #
################
locals {
  private_endpoint_VV           = "${var.name_VV}-private-endpoint"
  private_service_connection_VV = "${var.name_VV}-private-service-connection"
  dns_zone_group_VV             = "${var.name_VV}-dns-zone-group"
  resolve_dns_zone_VV           = var.dns_zone_name_VV != ""
  dns_zone_rg_VV                = "${var.dns_zone_name_VV}-rg"
}

##############
# Data Block #
##############
data "azurerm_virtual_network" "pe_vnet" {
  name                = var.pe_vnet_VV
  resource_group_name = var.pe_vnet_rg_VV
}

data "azurerm_subnet" "pe_subnet" {
  name                 = var.pe_subnet_VV
  resource_group_name  = data.azurerm_virtual_network.pe_vnet.resource_group_name
  virtual_network_name = data.azurerm_virtual_network.pe_vnet.name
}

data "azurerm_private_dns_zone" "dns_zone" {
  count               = local.resolve_dns_zone_VV ? 1 : 0
  name                = var.dns_zone_name_VV
  resource_group_name = local.dns_zone_rg_VV
}

##################
# Resource Block #
##################
resource "azurerm_private_endpoint" "private_endpoint" {
  name                = local.private_endpoint_VV
  location            = var.location_VV
  resource_group_name = data.azurerm_virtual_network.pe_vnet.resource_group_name
  subnet_id           = data.azurerm_subnet.pe_subnet.id

  private_service_connection {
    name                           = local.private_service_connection_VV
    private_connection_resource_id = var.connection_resource_id_VV
    is_manual_connection           = false
    subresource_names = [
      var.sub_resource_name_VV
    ]
  }

  private_dns_zone_group {
    name                 = local.dns_zone_group_VV
    private_dns_zone_ids = local.resolve_dns_zone_VV ? [data.azurerm_private_dns_zone.dns_zone[0].id] : [var.dns_zone_id_VV] 
  }
}
