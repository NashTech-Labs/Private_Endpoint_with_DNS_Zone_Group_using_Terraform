# Description
Here, In this template, we will create the private endpoint with dns zone availability in the same subscription or in different using the terraform module.

---

### Pre-Requisite
* Azure Account
* Pre Login into your Azure Account

---
### Steps
* Login into your Azure portal.
* You can either use a portal or use the service principal to login using your credentials.
* Clone the Repository and switch to module directory.
* Then run the terraform commands to create the resource.

```
Commands :
-  terraform init
-  terraform plan
-  terraform apply
```
* You can create your own `terraform.auto.tfvars` file to define the values of the variables like `vi terraform.auto.tfvars`
  E.g:-
  `variable_name = value`
---

## Configuration

The following table lists the configurable parameters of the service-connection-permissions module with their default values.

| Parameters                   | Description                                  | Default | Type   | Required |
|------------------------------|----------------------------------------------|---------|-------------------|
| name_VV                      | Common Name for resources                    |         | string | Yes      |  
| location_VV                  | Location for the resources                   |         | string | Yes      |  
| dns_zone_name_VV             | Name of DNS Zone Group                       |         | string | Yes      |
| dns_zone_id_VV               | ID of DNS Zone Group                         |         | string | Yes      |
| pe_vnet_VV                   | Vnet for the private endpoint                |         | string | Yes      |
| pe_vnet_rg_VV                | Vnet resource group for the private endpoint |         | string | Yes      |
| pe_subnet_VV                 | Subnet for the private endpoint              |         | string | Yes      |
| connection_resource_id_VV    | Connection resource ID                       |         | string | Yes      |
| sub_resource_name_VV         | Name of sub resource                         |         | string | Yes      |
 
---

 
---
