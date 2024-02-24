resource "proxmox_virtual_environment_vm" "oracle_vm" {
  name        = "terraform-provider-proxmox-oracle-vm"
  description = "Managed by Terraform"
  tags        = ["terraform", "oracle"]

  node_name = "first-node"
  vm_id     = 4321

  agent {
    # read 'Qemu guest agent' section, change to true only when ready
    enabled = false
  }

  clone {
    node_name = "oracle-template"
    vm_id     = 101
    full      = true
  }

  cpu {
    cores = 2
  }

  memory {
    dedicated = 4048
  }

  network_device {
    bridge = "vmbr0"
  }
}
