terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

provider "local" {}

data "local_file" "src" {
  filename = "${path.module}/source.txt"
}

output "source_content" {
  value = data.local_file.src.content
}
