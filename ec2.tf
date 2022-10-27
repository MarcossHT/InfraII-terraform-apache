resource "aws_instance" "marcos_ec2" {
    count = 2
    ami = var.ami
    instance_type = var.tipo_instancia
    key_name = "${var.usuario}-terraform-aws"
    tags = {
        "Name" = "${var.usuario}-${count.index}"
    }

    vpc_security_group_ids = [aws_security_group.sg_acesso_ssh_publico.id, aws_security_group.sg_acesso_web.id]

    user_data = <<-EOF
    #!/bin/bash
    sudo apt update
    sudo apt install apache2 -y
    EOF
}