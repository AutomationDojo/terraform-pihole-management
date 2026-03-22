resource "pihole_domain" "domains" {
  for_each = var.domains

  domain  = each.value.domain
  type    = each.value.type
  kind    = each.value.kind
  enabled = each.value.enabled
  comment = each.value.comment
  groups  = each.value.groups != null ? each.value.groups : var.default_groups
}
