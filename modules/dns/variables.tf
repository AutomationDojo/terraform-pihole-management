variable "a_records" {
  description = "Map of local DNS A records (hostname -> IP)"
  type        = map(string)
  default     = {}
}

variable "cname_records" {
  description = "Map of local DNS CNAME records (hostname -> target)"
  type        = map(string)
  default     = {}
}

variable "dns_settings" {
  description = "Pi-hole DNS configuration settings"
  type = object({
    dnssec              = optional(bool, false)
    query_logging       = optional(bool, true)
    blocking_active     = optional(bool, true)
    blocking_mode       = optional(string, "NULL")
    block_ttl           = optional(number, 2)
    cache_size          = optional(number, 10000)
    cache_optimizer     = optional(number, 3600)
    rate_limit_count    = optional(number, 1000)
    rate_limit_interval = optional(number, 60)
    domain_name         = optional(string, "lan")
    domain_local        = optional(bool, true)
    domain_needed       = optional(bool, false)
    bogus_priv          = optional(bool, true)
    expand_hosts        = optional(bool, false)
    listening_mode      = optional(string, "local")
  })
  default = {}
}

variable "upstream_servers" {
  description = "List of upstream DNS server IPs"
  type        = list(string)
  default     = []
}
