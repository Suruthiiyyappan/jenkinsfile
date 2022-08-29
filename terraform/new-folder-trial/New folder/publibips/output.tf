output "public1-ip" {
    value = module.public_ip_01.*.ipa
}