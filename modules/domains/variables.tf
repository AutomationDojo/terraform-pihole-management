variable "default_groups" {
  description = "Default group IDs to assign to all domains (can be overridden per domain)"
  type        = list(number)
  default     = []
}

variable "domains" {
  description = "Map of domain entries for allow/deny lists"
  type = map(object({
    domain  = string
    type    = string           # "allow" or "deny"
    kind    = string           # "exact" or "regex"
    enabled = optional(bool, true)
    comment = optional(string, "")
    groups  = optional(list(number), null)
  }))
  default = {}
}
