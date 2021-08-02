resource "null_resource" "null-1" {}
variable "count1" {}

resource "null_resource" "null" {
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
