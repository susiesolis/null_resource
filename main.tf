terraform {
  required_providers {
    null = {
      source = "hashicorp/null"
    }
  }
  required_version = ">= 0.13"
}



variable "count1" {
default = 1300
}

resource "null_resource" "null0" {
  count = var.count1
  triggers = {
    value = "EXAMPLE"
  }
}
resource "null_resource" "null" {
  provisioner "local-exec" {
    command = "printenv"
    interpreter = ["bash", "-c"]
  }
}
