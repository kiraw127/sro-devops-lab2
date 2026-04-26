terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

provider "local" {}

module "demo_file" {
  source   = "./modules/file_writer"
  filename = "${path.module}/module_output.txt"
  content  = "Created via Terraform module"
}
