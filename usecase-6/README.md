## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_lambda"></a> [lambda](#module\_lambda) | ./modules/lambda | n/a |
| <a name="module_start_ec2_schedule"></a> [start\_ec2\_schedule](#module\_start\_ec2\_schedule) | ./modules/event | n/a |
| <a name="module_stop_ec2_schedule"></a> [stop\_ec2\_schedule](#module\_stop\_ec2\_schedule) | ./modules/event | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_instance_id"></a> [instance\_id](#input\_instance\_id) | n/a | `string` | n/a | yes |
| <a name="input_lambda_name"></a> [lambda\_name](#input\_lambda\_name) | Lambda function name | `string` | n/a | yes |
| <a name="input_lambda_role"></a> [lambda\_role](#input\_lambda\_role) | Lambda IAM role arn | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | n/a | `string` | n/a | yes |
| <a name="input_scheduler_role_arn"></a> [scheduler\_role\_arn](#input\_scheduler\_role\_arn) | n/a | `string` | n/a | yes |

## Outputs

No outputs.
