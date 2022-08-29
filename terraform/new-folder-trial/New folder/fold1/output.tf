output "ipa" {

  value = zipmap(azurerm_public_ip.example.*.name, azurerm_public_ip.example.*.ip_address) 

  

 }

