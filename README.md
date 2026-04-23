# 项目介绍
本项目实现了一套完整的 DevOps 实践流程：

使用 Terraform 在 阿里云 上创建 Kubernetes（ACK）集群
使用 Docker 构建 Nginx 应用镜像（v1 / v2）
使用 Kubernetes 部署应用（蓝绿环境）
使用 Jenkins 实现蓝绿发布（无停机切换）


架构设计

1. Terraform
2. 阿里云 ACK（K8s）
3. Docker 镜像（nginx v1 / v2）
4. Kubernetes Deployment（blue / green）
5. Service（流量控制）
6. Jenkins（CI/CD + 蓝绿发布）

## 项目结构
```text
project/
├── terraform/          # 基础设施代码
│   ├── main.tf
│   ├── node_pool.tf
│   ├── outputs.tf
│   └── variables.tf
│
├── docker/
│   ├── v1/             # 蓝版本
│   │   ├── Dockerfile
│   │   └── index.html
│   └── v2/             # 绿版本
│       ├── Dockerfile
│       └── index.html
│
├── k8s/                # K8s 集群 manifests
│   ├── blue.yaml
│   ├── green.yaml
│   └── service.yaml
│
├── jenkins/            # 自动化脚本
│   └── Jenkinsfile
├
│── User Guide/         # 使用指导文档
│   ├── Jenkins blue-green deployment
│   └── Create a Kubernetes cluster using Terraform
│
└── README.md
