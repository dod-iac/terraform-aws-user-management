<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Usage

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

Terraform 0.13. Pin module version to ~> 1.0.0 . Submit pull-requests to master branch.

Terraform 0.11 and 0.12 are not supported.

## License

This project constitutes a work of the United States Government and is not subject to domestic copyright protection under 17 USC § 105.  However, because the project utilizes code licensed from contributors and other third parties, it therefore is licensed under the MIT License.  See LICENSE file for more information.

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13 |
| aws | ~> 3.0 |

## Providers

| Name | Version |
|------|---------|
| aws | ~> 3.0 |

## Modules

No Modules.

## Resources

| Name |
|------|
| [aws_caller_identity](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) |
| [aws_iam_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group) |
| [aws_iam_group_policy_attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group_policy_attachment) |
| [aws_iam_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) |
| [aws_iam_policy_document](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) |
| [aws_iam_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) |
| [aws_iam_role_policy_attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) |
| [aws_iam_user](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user) |
| [aws_iam_user_group_membership](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_group_membership) |
| [aws_partition](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/partition) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| admin\_group\_name | Name of the Admin Group | `string` | `"admin"` | no |
| admin\_users | Set of Admin IAM Users with tags. | `map` | `{}` | no |
| alumni\_group\_name | Name of the Alumni Group | `string` | `"alumni"` | no |
| alumni\_users | Set of Alumni IAM Users with tags. | `map` | `{}` | no |
| basic\_group\_name | Name of the Basic Group | `string` | `"basic"` | no |
| basic\_users | Set of Basic IAM Users with tags. | `map` | `{}` | no |
| tags | Tags for resources | `map` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| admin\_group | Admin Group |
| alumni\_group | Alumni Group |
| basic\_group | Basic Group |
| users | Users |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
