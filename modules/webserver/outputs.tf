output "interface_theme" {
  description = "Configured web interface theme"
  value       = pihole_config_webserver.settings.interface_theme
}

output "session_timeout" {
  description = "Configured session timeout"
  value       = pihole_config_webserver.settings.session_timeout
}
