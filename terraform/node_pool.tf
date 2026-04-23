#创建节点池
resource "alicloud_cs_kubernetes_node_pool" "xd_np" {
  cluster_id       = alicloud_cs_managed_kubernetes.k8s.id
  node_pool_name   = "xd-nodepool"
  vswitch_ids      = [alicloud_vswitch.vsw.id]
  instance_types   = [var.instance_type]
  desired_size     = var.node_count
  key_name         = var.ssh_key_name
  system_disk_category = "cloud_essd"
  system_disk_size = 40
}
