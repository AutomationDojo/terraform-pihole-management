resource "pihole_list" "lists" {
  for_each = var.lists

  address = each.value.address
  type    = each.value.type
  enabled = each.value.enabled
  comment = each.value.comment != null ? each.value.comment : null
  groups  = each.value.groups != null ? each.value.groups : var.default_groups
}
