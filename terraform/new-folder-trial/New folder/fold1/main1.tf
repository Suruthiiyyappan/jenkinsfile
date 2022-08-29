

resource "azurerm_public_ip" "example" {
  count = length(var.public_ip_name)
  name = "${var.public_ip_name[count.index]}"
  resource_group_name = var.resg_name1
  location = var.resg_loc1
  allocation_method   = "Static"

   tags = {
     environment = "Production"
   }
}