output "groups" {
  description = "Map of groups created, including their IDs"
  value = {
    for k, v in pihole_group.groups : k => {
      id          = v.id
      name        = v.name
      enabled     = v.enabled
      description = v.description
    }
  }
}

output "group_ids" {
  description = "Map of group name -> ID, useful for referencing in other modules"
  value       = { for k, v in pihole_group.groups : k => v.id }
}
