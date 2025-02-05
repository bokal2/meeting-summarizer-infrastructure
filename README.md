# Meeting Summarizer AWS Infrastructure (Terraform)

## Overview
This Terraform project provisions AWS infrastructure for the **Meeting Summarizer** application. It includes S3 buckets, ECR, VPC, IAM roles, and an EKS cluster for running containerized workloads.

## Infrastructure Components

### **1. S3 Buckets** (`s3.tf`)
- Stores meeting recordings (`meeting-recordings-*`)
- Stores processed summaries (`meeting-recordings-output-*`)

### **2. Elastic Container Registry (ECR)** (`ecr.tf`)
- Creates a Docker registry for storing application images.

### **3. Virtual Private Cloud (VPC)** (`vpc.tf`)
- Provisions a VPC with public, private, and database subnets.
- Enables NAT gateway, DNS support, and tagging.

### **4. Identity and Access Management (IAM)** (`iam.tf`)
- Creates IAM roles for EKS cluster and worker nodes.
- Attaches required AWS-managed policies for EKS operations.

### **5. Elastic Kubernetes Service (EKS)** (`eks.tf`)
- Deploys an EKS cluster with public and private node groups.
- Configures cluster security, logging, and networking.

## Outputs
- S3 bucket names
- ECR repository URL
- VPC details (ID, CIDR, subnets, NAT IPs)
- EKS cluster info (ID, ARN, endpoint, OIDC issuer)
- EKS node group details (IDs, ARNs, statuses)

## Usage
### **1. Prerequisites**
- Terraform installed (`>= 1.0`)
- AWS CLI configured
- AWS IAM user with required permissions

### **2. Deploy Infrastructure**
```sh
terraform init
terraform apply -auto-approve
```

### **3. Destroy Infrastructure**
```sh
terraform destroy -auto-approve
```

## Configuration
Modify `eks.auto.tfvars` to customize cluster settings:
```hcl
cluster_name = "dev-eks"
cluster_version = "1.32"
cluster_endpoint_public_access = true
```

## Notes
- The EKS cluster uses `t3.medium` instances for worker nodes.
- Public access to the cluster API is enabled (`0.0.0.0/0`). Update for security.

## License
MIT
