output "lists" {
  description = "Map of subscription lists created"
  value = {
    for k, v in pihole_list.lists : k => {
      id      = v.id
      address = v.address
      type    = v.type
      enabled = v.enabled
    }
  }
}
