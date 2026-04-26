variable "filename" {
  type = string
}

variable "content" {
  type = string
}

resource "local_file" "this" {
  filename = var.filename
  content  = var.content
}
