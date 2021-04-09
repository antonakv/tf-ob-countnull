resource "null_resource" "mynull" {
  count = 3

  provisioner "local-exec" {
    command = "echo ${count.index}"
  }

}
