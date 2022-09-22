locals {
  ip_filepath = "ips.json"
  common_tags = {
    Service    = "Curso Terraform"
    ManageBy   = "Terraform"
    Enviroment = var.environment
    Owner      = "Rubem"
  }
}
