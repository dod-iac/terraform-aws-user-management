#
# Admin
#

data "aws_iam_policy_document" "assume_role_policy" {
  statement {
    actions = ["sts:AssumeRole"]
    principals {
      type        = "AWS"
      identifiers = [data.aws_caller_identity.current.account_id]
    }
    condition {
      test     = "Bool"
      variable = "aws:MultiFactorAuthPresent"
      values   = ["true"]
    }
  }
}

resource "aws_iam_role" "admin" {
  name               = "admin"
  description        = "Allows Administrator Access"
  assume_role_policy = data.aws_iam_policy_document.assume_role_policy.json
  tags               = var.tags
}

resource "aws_iam_role_policy_attachment" "admin_administrator" {
  role = aws_iam_role.admin.name
  policy_arn = format(
    "arn:%s:iam::aws:policy/AdministratorAccess",
    data.aws_partition.current.partition
  )
}

#
# Basic
#

# None

#
# Alumni
#

# None
