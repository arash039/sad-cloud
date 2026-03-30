variable "all_findings" {
  description = "enable all findings"
  type        = bool
  default     = false
}

variable "all_cloudformation_findings" {
  description = "enable all cloudformation findings"
  type        = bool
  default     = false
}

variable "all_cloudtrail_findings" {
  description = "enable all cloudtrail findings"
  type        = bool
  default     = false
}

variable "all_cloudwatch_findings" {
  description = "enable all cloudwatch findings"
  type        = bool
  default     = false
}

variable "all_config_findings" {
  description = "enable all config findings"
  type        = bool
  default     = false
}

variable "all_ebs_findings" {
  description = "enable all ebs findings"
  type        = bool
  default     = false
}

variable "all_ec2_findings" {
  description = "enable all ec2 findings"
  type        = bool
  default     = false
}

variable "all_kms_findings" {
  description = "enable all kms findings"
  type        = bool
  default     = false
}

variable "all_rds_findings" {
  description = "enable all rds findings"
  type        = bool
  default     = false
}

variable "all_elb_findings" {
  description = "enable all elb findings"
  type        = bool
  default     = false
}

variable "all_iam_findings" {
  description = "enable all iam findings"
  type        = bool
  default     = false
}

variable "all_s3_findings" {
  description = "enable all s3 findings"
  type        = bool
  default     = false
}

