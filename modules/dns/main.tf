resource "pihole_local_dns" "a_records" {
  for_each = var.a_records

  hostname = each.key
  ip       = each.value
}

resource "pihole_cname_record" "cname_records" {
  for_each = var.cname_records

  domain = each.key
  target = each.value
}

resource "pihole_config_dns" "settings" {
  count = var.dns_settings != null ? 1 : 0

  dnssec              = var.dns_settings.dnssec
  query_logging       = var.dns_settings.query_logging
  blocking_active     = var.dns_settings.blocking_active
  blocking_mode       = var.dns_settings.blocking_mode
  block_ttl           = var.dns_settings.block_ttl
  cache_size          = var.dns_settings.cache_size
  cache_optimizer     = var.dns_settings.cache_optimizer
  rate_limit_count    = var.dns_settings.rate_limit_count
  rate_limit_interval = var.dns_settings.rate_limit_interval
  domain_name         = var.dns_settings.domain_name
  domain_local        = var.dns_settings.domain_local
  domain_needed       = var.dns_settings.domain_needed
  bogus_priv          = var.dns_settings.bogus_priv
  expand_hosts        = var.dns_settings.expand_hosts
  listening_mode      = var.dns_settings.listening_mode
}

resource "pihole_dns_upstream" "upstream" {
  for_each = toset(var.upstream_servers)

  upstream = each.value
}
