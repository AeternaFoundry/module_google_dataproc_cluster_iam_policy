variable "dataproc_cluster_iam_policies" {
  description = <<EOT
Map of dataproc_cluster_iam_policies, attributes below
Required:
    - cluster
    - policy_data
Optional:
    - project
    - region
EOT

  type = map(object({
    cluster     = string
    policy_data = string
    project     = optional(string)
    region      = optional(string)
  }))
}

