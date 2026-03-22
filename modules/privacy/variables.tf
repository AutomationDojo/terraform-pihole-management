variable "privacy_level" {
  description = "Privacy level for statistics (0=show everything, 1=hide domains, 2=hide domains and clients, 3=anonymous mode)"
  type        = number
  default     = 0
}

variable "db_import" {
  description = "Import database on FTL startup"
  type        = bool
  default     = true
}

variable "max_db_days" {
  description = "Maximum number of days to keep queries in the database"
  type        = number
  default     = 365
}

variable "network_expire" {
  description = "How long to keep IP addresses in the network_addresses table (days)"
  type        = number
  default     = 365
}

variable "etc_dnsmasq_d" {
  description = "Load configuration files from /etc/dnsmasq.d"
  type        = bool
  default     = false
}
