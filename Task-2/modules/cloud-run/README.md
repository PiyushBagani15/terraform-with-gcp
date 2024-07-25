<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_cloud_run_service.hello_world](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloud_run_service) | resource |
| [google_cloud_run_service_iam_policy.noauth](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloud_run_service_iam_policy) | resource |
| [google_project_service.run](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_service) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_image"></a> [image](#input\_image) | The container image to deploy. | `string` | n/a | yes |
| <a name="input_latest_revision"></a> [latest\_revision](#input\_latest\_revision) | Whether to send traffic to the latest revision or not. | `bool` | `true` | no |
| <a name="input_location"></a> [location](#input\_location) | The default location | `string` | `"us-central1"` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the Cloud Run service. | `string` | n/a | yes |
| <a name="input_percent"></a> [percent](#input\_percent) | The percentage of traffic to redirect to this particular revision. | `number` | `100` | no |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | The project ID | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | The region in which resources will be created | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_url"></a> [url](#output\_url) | Endpoint of the cloud-run service. |
<!-- END_TF_DOCS -->