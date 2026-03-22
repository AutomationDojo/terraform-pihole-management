resource "pihole_config_dhcp" "settings" {
  count = var.dhcp_settings.active ? 1 : 0

  active                 = var.dhcp_settings.active
  start                  = var.dhcp_settings.start
  end                    = var.dhcp_settings.end
  router                 = var.dhcp_settings.router
  netmask                = var.dhcp_settings.netmask
  lease_time             = var.dhcp_settings.lease_time
  ipv6                   = var.dhcp_settings.ipv6
  rapid_commit           = var.dhcp_settings.rapid_commit
  ignore_unknown_clients = var.dhcp_settings.ignore_unknown_clients
  logging                = var.dhcp_settings.logging
  multi_dns              = var.dhcp_settings.multi_dns
}

resource "pihole_dhcp_static_lease" "leases" {
  for_each = var.static_leases

  mac      = each.value.mac
  ip       = each.value.ip
  hostname = each.value.hostname
}
