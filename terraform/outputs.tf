# 输出 kubeconfig 内容
output "kubeconfig_content" {
  value    = alicloud_cs_managed_kubernetes.k8s.kube_config
  sensitive = true
}
