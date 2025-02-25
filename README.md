# terraform-twingate-connector_tokens

Terraform module to manage the following Twingate resources:

* twingate_connector_tokens

## Usage

Copy and paste the following code snippet to your Terraform configuration,
specify the required variables and run the command `terraform init`.

```hcl
module "twingate_remote_network" {
  source  = "gitlab.com/terraform-child-modules-48151/terraform-twingate-remote-network/local"
  version = "1.0.0"

  name = "example-network"

  location = "ON_PREMISE"
}

module "twingate_connector" {
  source  = "gitlab.com/terraform-child-modules-48151/terraform-twingate-connector/local"
  version = "1.0.0"

  remote_network_id = module.twingate_remote_network.id

  name = "example-connector"
}

module "twingate_connector_tokens" {
  source  = "gitlab.com/terraform-child-modules-48151/terraform-twingate-connector-tokens/local"
  version = "1.0.0"

  connector_id = module.twingate_connector.id
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_twingate"></a> [twingate](#requirement\_twingate) | ~> 3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_twingate"></a> [twingate](#provider\_twingate) | ~> 3.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [twingate_connector_tokens.this](https://registry.terraform.io/providers/twingate/twingate/latest/docs/resources/connector_tokens) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_connector_id"></a> [connector\_id](#input\_connector\_id) | The ID of the parent Connector | `string` | n/a | yes |
| <a name="input_keepers"></a> [keepers](#input\_keepers) | Arbitrary map of values that, when changed, will trigger recreation of resource | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_access_token"></a> [access\_token](#output\_access\_token) | The Access Token of the parent Connector |
| <a name="output_refresh_token"></a> [refresh\_token](#output\_refresh\_token) | The ID of this resource |
<!-- END_TF_DOCS -->

## Authors

Created and maintained by [Dennis Hoppe](https://gitlab.com/dhoppeIT).

## License

Apache 2 licensed. See [LICENSE](LICENSE) for full details.
