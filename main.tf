/**
 * ## User Management
 *
 * Configures IAM users, groups and roles in three groups: Admin, Basic, and Alumni
 *
 * * Alumni: Administrator access
 * * Basic: Change Password and Manage Self Identity
 * * Alumni: Deny All access
 *
 * Users of this module should ensure that each set of users is an exclusive group.
 *
 * ## Usage
 *
 * ```hcl
 * module "user_management" {
 *   source = "dod-iac/user-management/aws"
 *
 *   admin_users = {
 *     "Admin User" = {
 *       Name  = "Admin User"
 *       Email = "adminuser@example.com"
 *     }
 *   }
 *   basic_users = {
 *     "Basic User" = {
 *       Name  = "Basic User"
 *       Email = "basicuser@example.com"
 *     }
 *   }
 *   alumni_users = {
 *     "Alumni User" = {
 *       Name  = "Alumni User"
 *       Email = "alumniuser@example.com"
 *     }
 *   }
 * }
 * ```
 *
 * ## Terraform Version
 *
 * Terraform 0.13. Pin module version to ~> 1.0.0 . Submit pull-requests to main branch.
 *
 * Terraform 0.11 and 0.12 are not supported.
 *
 * ## License
 *
 * This project constitutes a work of the United States Government and is not subject to domestic copyright protection under 17 USC § 105.  However, because the project utilizes code licensed from contributors and other third parties, it therefore is licensed under the MIT License.  See LICENSE file for more information.
 */

data "aws_caller_identity" "current" {}
data "aws_partition" "current" {}
