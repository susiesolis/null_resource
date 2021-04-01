resource "null_resource" "null" {}

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
  count = 11
   triggers = {
    value = "EXAMPLE-2"
  }
}
