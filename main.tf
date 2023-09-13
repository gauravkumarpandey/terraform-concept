module "web_server_module" {
   source = "./web_module"
   instance_name = "Web Server"
}

module "db_server_module" {
  source = "./db_module"
  instance_name = "Database Server"
}

output "db_private_ip" {
  value = module.db_server_module.server_private_ip
}