variable "groups" {
  description = "Map of Pi-hole groups to create"
  type = map(object({
    enabled     = optional(bool, true)
    description = optional(string, "")
  }))
  default = {}
}
