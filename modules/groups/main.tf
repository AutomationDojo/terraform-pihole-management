resource "pihole_group" "groups" {
  for_each = var.groups

  name        = each.key
  enabled     = each.value.enabled
  description = each.value.description
}
