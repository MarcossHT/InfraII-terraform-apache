output "instancias_ec2" {
    value = aws_instance.marcos_ec2.*.public_ip
}