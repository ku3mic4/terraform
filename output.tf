output "test-vm-IPv4"  {
  value       = yandex_compute_instance.linux-vm.network_interface.0.ip_address
  description = "IPv4"
}

output "test-vm-NAT_IPv4"  {
  value       = yandex_compute_instance.linux-vm.network_interface.0.nat_ip_address
  description = "NAT_IPv4"
}