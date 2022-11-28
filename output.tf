output "instancias_ec2" {
    value = aws_instance.marcos_ec2.*.public_ip
}

output "instancias_ec2_private" {
  value = aws_instance.marcos_ec2.*.private_ip
}

output "instancias_ec2_ansible" {
    value = aws_instance.marcos_ec2_ansible.*.public_ip
}