resource "mgc_kubernetes_cluster" "cluster_arquitetos" {
  name                 = "cluster-terraform-pedro"
  version              = "v1.30.2"
  enabled_server_group = false
  description          = "Cluster Terraform Pedro"
}

resource "mgc_kubernetes_nodepool" "nodepool_arquitetos" {
  name         = "nodepool-teste-pedro"
  cluster_id   = mgc_kubernetes_cluster.cluster_arquitetos.id
  flavor_name  = "cloud-k8s.gp1.small"
  replicas     = 1
  min_replicas = 1
  max_replicas = 5
}