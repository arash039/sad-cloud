
output "kms_key_arn" {
  value = aws_kms_key.main[0].arn
}

output "kms_key_alias" {
  value = aws_kms_alias.main[0].name
}