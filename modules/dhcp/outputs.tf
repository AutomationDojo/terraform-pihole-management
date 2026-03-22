output "static_leases" {
  description = "Map of static DHCP leases created"
  value = {
    for k, v in pihole_dhcp_static_lease.leases : k => {
      mac      = v.mac
      ip       = v.ip
      hostname = v.hostname
    }
  }
}
