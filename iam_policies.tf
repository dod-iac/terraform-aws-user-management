
#
# Deny All
#

# This policy is available in Commercial as AWSDenyAll but not in GovCloud.
# For simplicity this is being recreated
data "aws_iam_policy_document" "deny_all" {
  statement {
    actions   = ["*"]
    effect    = "Deny"
    resources = ["*"]
  }
}

resource "aws_iam_policy" "deny_all" {
  name        = "deny-all"
  path        = "/"
  description = "Deny all access"
  policy      = data.aws_iam_policy_document.deny_all.json
}
