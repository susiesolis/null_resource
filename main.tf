variable "count1" {}

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
