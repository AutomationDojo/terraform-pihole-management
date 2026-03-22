variable "dhcp_settings" {
  description = "Pi-hole DHCP server configuration"
  type = object({
    active                  = optional(bool, false)
    start                   = optional(string, "")
    end                     = optional(string, "")
    router                  = optional(string, "")
    netmask                 = optional(string, "")
    lease_time              = optional(string, "")
    ipv6                    = optional(bool, false)
    rapid_commit            = optional(bool, false)
    ignore_unknown_clients  = optional(bool, false)
    logging                 = optional(bool, false)
    multi_dns               = optional(bool, false)
  })
  default = {}
}

variable "static_leases" {
  description = "Map of DHCP static leases (name -> mac/ip/hostname)"
  type = map(object({
    mac      = string
    ip       = string
    hostname = optional(string, null)
  }))
  default = {}
}
