# AKS Terraform Demo

This repository contains Terraform code to deploy an Azure Kubernetes Service (AKS) cluster with:

- Virtual Network
- Resource Group
- AKS Cluster
- Nginx Deployment
- Helm Charts (optional)
- Public Load Balancer

## Steps Followed

1. Create infrastructure using Terraform
2. Deploy AKS cluster
3. Connect using `kubectl`
4. Deploy Nginx
5. (Optional) Use Helm to install Nginx chart

## Prerequisites

- Azure CLI (`az`)
- Terraform
- kubectl
- Helm (optional)

## How to use

```bash
terraform init
terraform plan
terraform apply
