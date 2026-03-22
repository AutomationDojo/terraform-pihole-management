output "domains" {
  description = "Map of domain entries created"
  value = {
    for k, v in pihole_domain.domains : k => {
      id      = v.id
      domain  = v.domain
      type    = v.type
      kind    = v.kind
      enabled = v.enabled
    }
  }
}
