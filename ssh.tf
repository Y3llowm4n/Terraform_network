# Webserver 
resource "tls_private_key" "linux_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "local_file" "linuxkey" {
  filename = "linuxkey.pem"
  content  = tls_private_key.linux_key.private_key_pem
}

# Monitorserver
resource "tls_private_key" "linux_key2" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "local_file" "linuxkey2" {
  filename = "linuxkey2.pem"
  content  = tls_private_key.linux_key2.private_key_pem
}
