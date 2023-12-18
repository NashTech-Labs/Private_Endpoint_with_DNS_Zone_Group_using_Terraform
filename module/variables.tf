##############################
#     Common Variables       #
##############################

variable "name_VV" {
  type = string
  description = "Common Name for resources"
}

variable "location_VV" {
  type = string
  default = "Location for the resources"
}

##############################
#     DNS  Variables         #
##############################

variable "dns_zone_name_VV" {
  type    = string
  description = "Name of DNS Zone Group"
}

variable "dns_zone_id_VV" {
  type    = string
  description = "ID of DNS Zone Group"
}

##############################
#     Private Endpoint       #
##############################

variable "pe_vnet_VV" {
  type = string
  description = "Vnet for the private endpoint"
}

variable "pe_vnet_rg_VV" {
  type = string
  description = "Vnet resource group for the private endpoint"

}

variable "pe_subnet_VV" {
  type = string
  description = "Subnet for the private endpoint"
}

variable "connection_resource_id_VV" {
  type = string
  description = "Connection resource ID"
}

variable "sub_resource_name_VV" {
  type = string
  description = "Name of sub resource"
}
