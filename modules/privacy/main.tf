resource "pihole_config_misc" "settings" {
  privacy_level = var.privacy_level
  etc_dnsmasq_d = var.etc_dnsmasq_d
}

resource "pihole_config_database" "settings" {
  db_import      = var.db_import
  max_db_days    = var.max_db_days
  network_expire = var.network_expire
}
