provider "azurerm" {
  features {}
}

data "azurerm_resource_group" "example" {
  name = var.rg_name1
  # name = var.pubIP_names
}

module "public_ip_01" {
  public_ip_name = var.pubIP_names
  source = "../fold1"

  resg_name1 = data.azurerm_resource_group.example.name
  resg_loc1 = data.azurerm_resource_group.example.location
  # public_ip_name = each.key
  # count_of_types = "${length(var.pubIP_names)}"

}