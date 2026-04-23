# 项目介绍
本项目实现了一套完整的 DevOps 实践流程：

使用 Terraform 在 阿里云 上创建 Kubernetes（ACK）集群
使用 Docker 构建 Nginx 应用镜像（v1 / v2）
使用 Kubernetes 部署应用（蓝绿环境）
使用 Jenkins 实现蓝绿发布（无停机切换）


架构设计
Terraform
   ↓
阿里云 ACK（K8s）
   ↓
Docker 镜像（nginx v1 / v2）
   ↓
Kubernetes Deployment（blue / green）
   ↓
Service（流量控制）
   ↓
Jenkins（CI/CD + 蓝绿发布）

项目结构
project/
├── terraform/          # 基础设施代码
│   ├── main.tf
│   ├── variables.tf
│
├── docker/
│   ├── v1/             # 蓝版本
│   │   ├── Dockerfile
│   │   └── index.html
│   ├── v2/             # 绿版本
│       ├── Dockerfile
│       └── index.html
│
├── k8s/                #k8s集群
│   ├── blue.yaml
│   ├── green.yaml
│   ├── service.yaml
│
├── jenkins/           #自动化脚本
│   └── Jenkinsfile
│
│
│── User Guide/         # 使用指导
│
│   ├── Jenkins blue-green deployment
│   ├── Create a Kubernetes cluster using Terraform
│
│
└── README.md
