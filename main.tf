resource "twingate_connector_tokens" "this" {
  connector_id = var.connector_id

  keepers = var.keepers
}
