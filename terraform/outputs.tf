# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

output "us-central1" {
  value       = var.region
  description = "GCloud Region"
}

output "postapp-389011" {
  value       = var.project_id
  description = "GCloud Project ID"
}

output "postapp-389011-gke" {
  value       = google_container_cluster.primary.name
  description = "GKE Cluster Name"
}

output "kubernetes_cluster_host" {
  value       = google_container_cluster.primary.endpoint
  description = "GKE Cluster Host"
}
