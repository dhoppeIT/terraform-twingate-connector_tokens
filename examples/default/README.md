# Example

The configuration in this directory creates:

* twingate_connector_tokens

## Usage

To run this example, you need to execute the following commands:

```shell
terraform init
terraform plan
terraform apply
```

:warning: This example may create resources that cost money. Execute the
command `terraform destroy` when the resources are no longer needed.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_twingate"></a> [twingate](#requirement\_twingate) | ~> 4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_twingate"></a> [twingate](#provider\_twingate) | ~> 4.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_twingate_connector_tokens"></a> [twingate\_connector\_tokens](#module\_twingate\_connector\_tokens) | ../../ | n/a |

## Resources

| Name | Type |
|------|------|
| [twingate_connectors.this](https://registry.terraform.io/providers/twingate/twingate/latest/docs/data-sources/connectors) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_api_token"></a> [api\_token](#input\_api\_token) | The access key for API operations | `string` | `null` | no |
| <a name="input_http_max_retry"></a> [http\_max\_retry](#input\_http\_max\_retry) | Specifies a retry limit for the http requests made | `number` | `10` | no |
| <a name="input_http_timeout"></a> [http\_timeout](#input\_http\_timeout) | Specifies a time limit in seconds for the http requests made | `number` | `35` | no |
| <a name="input_network"></a> [network](#input\_network) | Your Twingate network ID for API operations | `string` | `null` | no |
| <a name="input_url"></a> [url](#input\_url) | This is optional and shouldn't be changed under normal circumstances | `string` | `"twingate.com"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_access_token"></a> [access\_token](#output\_access\_token) | The Access Token of the parent Connector |
| <a name="output_refresh_token"></a> [refresh\_token](#output\_refresh\_token) | The ID of this resource |
<!-- END_TF_DOCS -->
