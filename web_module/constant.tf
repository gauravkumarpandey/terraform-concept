variable "ingress_rules" {
  type = list(number)
  default = [ 80, 443 ]
}