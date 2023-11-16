terraform {
  required_providers {
    null = {
      source = "hashicorp/null"
    }
  }
  required_version = ">= 0.13"
}



variable "count1" {
}

#variable "count2" {
#}

resource "null_resource" "null0" {
  count = var.count1
  triggers = {
    value = "EXAMPLE"
  }
}
resource "null_resource" "null01" {
  count = var.count2
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
