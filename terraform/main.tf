terraform {
  required_providers {
    alicloud = {
      source  = "aliyun/alicloud"
      version = "~> 1.276.0"
    }
  }
}

provider "alicloud" {
  region = var.region
}

#创建VPC
resource "alicloud_vpc" "vpc" {
  cidr_block = "172.16.0.0/16"
  vpc_name = "xd-vpc"
}
#创建子网
resource "alicloud_vswitch" "vsw" {
  vpc_id = alicloud_vpc.vpc.id
  cidr_block = "172.16.1.0/24"
  zone_id = "cn-hangzhou-b"
}
#创建k8s集群
resource "alicloud_cs_managed_kubernetes" "k8s" {
  name = var.cluster_name
  cluster_spec = "ack.standard"
  vswitch_ids = [alicloud_vswitch.vsw.id]
  pod_cidr = "10.244.0.0/16"
  service_cidr = "10.96.0.0/16"
}
