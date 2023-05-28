resource "tls_private_key" "web_ssh" {
  algorithm = "RSA"
  rsa_bits  = 4096
}