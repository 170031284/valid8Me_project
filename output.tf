
# # Output the generated SSH private key
# output "private_key" {
#   value       = tls_private_key.ssh_key.private_key_pem
#   description = "Generated SSH private key"
# }

#  Output the generated SSH public key
# output "public_key" {
#   value       = tls_private_key.ssh_key.public_key_openssh
#   description = "Generated SSH public key"
# }