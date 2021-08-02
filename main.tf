resource "null_resource" "null-1" {}

resource "null_resource" "env" {
  provisioner "local-exec" {
    command = "printenv"
  }
}

variable "count1" {}

resource "null_resource" "null0" {
  count = var.count1
  triggers = {
    value = "EXAMPLE"
  }
}


