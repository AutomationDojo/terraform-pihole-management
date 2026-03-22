output "a_records" {
  description = "Map of local DNS A records created"
  value = {
    for k, v in pihole_local_dns.a_records : k => {
      hostname = v.hostname
      ip       = v.ip
    }
  }
}

output "cname_records" {
  description = "Map of CNAME records created"
  value = {
    for k, v in pihole_cname_record.cname_records : k => {
      domain = v.domain
      target = v.target
    }
  }
}
