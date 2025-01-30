module "twingate_connector_tokens" {
  source = "../../"

  connector_id = data.twingate_connectors.this.connectors[0].id
}
