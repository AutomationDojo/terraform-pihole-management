variable "default_groups" {
  description = "Default group IDs to assign to all lists (can be overridden per list)"
  type        = list(number)
  default     = []
}

variable "lists" {
  description = "Map of subscription lists (adlists / allowlists) to manage"
  type = map(object({
    address = string
    type    = optional(string, "block") # "block" or "allow"
    enabled = optional(bool, true)
    comment = optional(string, null)
    groups  = optional(list(number), null)
  }))
  default = {}
}
