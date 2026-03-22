terraform {
  required_version = ">= 1.0"

  required_providers {
    pihole = {
      source  = "registry.terraform.io/dklesev/pihole"
      version = "~> 1.0"
    }
  }
}
