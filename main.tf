resource "google_dataproc_cluster_iam_policy" "dataproc_cluster_iam_policies" {
  for_each = var.dataproc_cluster_iam_policies

  cluster     = each.value.cluster
  policy_data = each.value.policy_data
  project     = each.value.project
  region      = each.value.region
}

