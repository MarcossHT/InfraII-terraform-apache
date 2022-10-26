resource "aws_key_pair" "marcos_terraform_key" {
    key_name = "${var.usuario}-terraform-aws"
    public_key = ""
}