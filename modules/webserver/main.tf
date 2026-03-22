resource "pihole_config_webserver" "settings" {
  interface_boxed = var.interface_boxed
  interface_theme = var.interface_theme
  session_timeout = var.session_timeout
  session_restore = var.session_restore
  threads         = var.threads
}
