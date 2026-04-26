terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

provider "local" {}

resource "local_file" "ws" {
  filename = "${path.module}/workspace_${terraform.workspace}.txt"
  content  = "Current workspace is ${terraform.workspace}"
}
