variable "region" {
  default = "cn-hangzhou"
}

variable "cluster_name" {
  default = "xd-k8s-cluster"
}

variable "instance_type" {
  default = "ecs.c7.xlarge"
}

variable "node_count" {
  default = 2
}

variable "ssh_key_name" {
  description = "SSH密钥名称"
  default = "xd"
}
