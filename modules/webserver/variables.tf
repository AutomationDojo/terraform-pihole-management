variable "interface_boxed" {
  description = "Use the boxed layout in the web interface"
  type        = bool
  default     = true
}

variable "interface_theme" {
  description = "Theme for the web interface (e.g. 'default-auto', 'default-light', 'default-dark')"
  type        = string
  default     = "default-auto"
}

variable "session_timeout" {
  description = "Session timeout in seconds"
  type        = number
  default     = 1800
}

variable "session_restore" {
  description = "Restore sessions on FTL restart"
  type        = bool
  default     = true
}

variable "threads" {
  description = "Number of webserver worker threads"
  type        = number
  default     = 50
}
