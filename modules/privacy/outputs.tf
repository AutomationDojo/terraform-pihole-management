output "privacy_level" {
  description = "Configured privacy level"
  value       = pihole_config_misc.settings.privacy_level
}

output "max_db_days" {
  description = "Configured max DB days"
  value       = pihole_config_database.settings.max_db_days
}
