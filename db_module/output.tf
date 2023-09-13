output "server_private_ip" {
    description = "Server private IP address"
    value = aws_instance.db.private_ip
}