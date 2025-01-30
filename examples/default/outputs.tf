output "access_token" {
  description = "The Access Token of the parent Connector"
  value       = module.twingate_connector_tokens.access_token
  sensitive   = true
}

output "refresh_token" {
  description = "The ID of this resource"
  value       = module.twingate_connector_tokens.refresh_token
  sensitive   = true
}
