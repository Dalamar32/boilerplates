# Proxmox Provider
# ---
# Initial Provider Configuration for Proxmox

terraform {

  required_version = ">= 0.13.0"

  required_providers {
    proxmox = {
      source = "bpg/proxmox"
    }
  }
}

variable "virtual_environment_endpoint" {
  type = string
}

variable "proxmox_api_token_id" {
  type = string
}

provider "proxmox" {

  endpoint  = var.virtual_environment_endpoint
  api_token = var.proxmox_api_token_id
  # (Optional) Skip TLS Verification
  # pm_tls_insecure = true

}
