output "access_token" {
  description = "The Access Token of the parent Connector"
  value       = twingate_connector_tokens.this.access_token
  sensitive   = true
}

output "id" {
  description = "The ID of this resource"
  value       = twingate_connector_tokens.this.id
}

output "refresh_token" {
  description = "The Refresh Token of the parent Connector"
  value       = twingate_connector_tokens.this.refresh_token
  sensitive   = true
}
