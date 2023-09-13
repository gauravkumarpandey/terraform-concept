
resource "aws_security_group" "web" {
    name = "Allow HTTPS"
    dynamic "ingress" {
       for_each = var.ingress_rules
       content {
         from_port = ingress.value
         to_port = ingress.value
         protocol = "TCP"
         cidr_blocks = ["0.0.0.0/0"]
       }
    }
}
