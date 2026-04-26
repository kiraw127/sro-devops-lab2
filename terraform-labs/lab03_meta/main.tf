terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

provider "local" {}

resource "local_file" "count_files" {
  count    = 2
  filename = "${path.module}/count_${count.index}.txt"
  content  = "count index = ${count.index}"
}

resource "local_file" "foreach_files" {
  for_each = toset(["dev", "test", "prod"])
  filename = "${path.module}/${each.key}.txt"
  content  = "env = ${each.key}"
}
