resource "null_resource" "null-1" {}

resource "null_resource" "env" {
  provisioner "local-exec" {
    command = "printenv"
  }
}

resource "null_resource" "null0" {
  count = 10
  triggers = {
    value = "EXAMPLE"
  }
}

resource "null_resource" "null1" {
  count = 141
   triggers = {
    value = "EXAMPLE-2"
  }
}
