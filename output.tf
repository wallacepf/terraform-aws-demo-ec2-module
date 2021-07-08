output "server_ip" {
  value = "${module.ec2_module.public_ip}"
}