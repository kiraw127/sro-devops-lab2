terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

provider "local" {}

variable "name" {
  type    = string
  default = "student"
}

locals {
  msg = "Hello, ${var.name}"
}

resource "local_file" "msg" {
  filename = "${path.module}/message.txt"
  content  = local.msg
}

output "final_message" {
  value = local.msg
}
