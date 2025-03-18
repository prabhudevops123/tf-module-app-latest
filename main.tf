resource "null_resource" "test" {
  rtiggers = {
    xyz = timestamp()
  }
  provisioner "local-exec" {
    command = "echo Hello World - Env - ${var.env}"
  }
}