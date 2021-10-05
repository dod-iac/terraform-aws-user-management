<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## User Management

Configures IAM users, groups and roles in three groups: Admin, Basic, and Alumni

* Alumni: Administrator access
* Basic: Change Password and Manage Self Identity
* Alumni: Deny All access

Users of this module should ensure that each set of users is an exclusive group.

## Usage

```hcl
module "user_management" {
  source = "dod-iac/user-management/aws"

  admin_users = {
    "Admin User" = {
      Name  = "Admin User"
      Email = "adminuser@example.com"
    }
  }
  basic_users = {
    "Basic User" = {
      Name  = "Basic User"
      Email = "basicuser@example.com"
    }
  }
  alumni_users = {
    "Alumni User" = {
      Name  = "Alumni User"
      Email = "alumniuser@example.com"
    }
  }
}
```

## Terraform Version

Terraform 0.13. Pin module version to ~> 1.0.0 . Submit pull-requests to main branch.

Terraform 0.11 and 0.12 are not supported.

## License

This project constitutes a work of the United States Government and is not subject to domestic copyright protection under 17 USC § 105.  However, because the project utilizes code licensed from contributors and other third parties, it therefore is licensed under the MIT License.  See LICENSE file for more information.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 3.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_group.admin](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group) | resource |
| [aws_iam_group.alumni](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group) | resource |
| [aws_iam_group.basic](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group) | resource |
| [aws_iam_group_policy_attachment.admin_administrator](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group_policy_attachment) | resource |
| [aws_iam_group_policy_attachment.alumni_deny_all](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group_policy_attachment) | resource |
| [aws_iam_group_policy_attachment.basic_change_passwd](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group_policy_attachment) | resource |
| [aws_iam_policy.deny_all](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_role.admin](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.admin_administrator](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_user.user](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user) | resource |
| [aws_iam_user_group_membership.user](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_group_membership) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_iam_policy_document.assume_role_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.deny_all](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_partition.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/partition) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_admin_group_name"></a> [admin\_group\_name](#input\_admin\_group\_name) | Name of the Admin Group | `string` | `"admin"` | no |
| <a name="input_admin_users"></a> [admin\_users](#input\_admin\_users) | Set of Admin IAM Users with tags. | `map(string)` | `{}` | no |
| <a name="input_alumni_group_name"></a> [alumni\_group\_name](#input\_alumni\_group\_name) | Name of the Alumni Group | `string` | `"alumni"` | no |
| <a name="input_alumni_users"></a> [alumni\_users](#input\_alumni\_users) | Set of Alumni IAM Users with tags. | `map(string)` | `{}` | no |
| <a name="input_basic_group_name"></a> [basic\_group\_name](#input\_basic\_group\_name) | Name of the Basic Group | `string` | `"basic"` | no |
| <a name="input_basic_users"></a> [basic\_users](#input\_basic\_users) | Set of Basic IAM Users with tags. | `map(string)` | `{}` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags for resources | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_admin_group"></a> [admin\_group](#output\_admin\_group) | Admin Group |
| <a name="output_admin_role"></a> [admin\_role](#output\_admin\_role) | Admin Role |
| <a name="output_alumni_group"></a> [alumni\_group](#output\_alumni\_group) | Alumni Group |
| <a name="output_basic_group"></a> [basic\_group](#output\_basic\_group) | Basic Group |
| <a name="output_users"></a> [users](#output\_users) | Users |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
