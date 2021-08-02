resource "null_resource" "null-1" {}

resource "null_resource" "env" {
  provisioner "local-exec" {
    command = "printenv"
  }
}

