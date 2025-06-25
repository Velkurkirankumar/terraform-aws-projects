# Terraform AWS Projects 🌐🚀

This repository contains multiple **Terraform-based infrastructure projects** built for AWS. These projects demonstrate core Infrastructure-as-Code (IaC) concepts using **Terraform**, and span across **networking**, **compute**, **S3**, and **modular infrastructure** design.

---

## 🗂️ Projects Included

### 1. `activity1/` - VPC and Networking
- Builds a VPC with subnets, internet gateway, and routing
- Good for understanding base network layout in AWS

### 2. `activity2/` - EC2 with NGINX + HTML Hosting
- Launches a public EC2 instance with NGINX and custom web page
- Uses user-data (`nginx.sh`) to auto-configure web server
- Supports `dev.tfvars` and `qa.tfvars` environments

### 3. `s3/` - S3 Bucket Provisioning
- Creates versioned S3 buckets
- Optional file uploads or lifecycle policy configurations

### 4. `using_modules_community/` - Terraform Modules
- Demonstrates using external Terraform registry modules
- Applies best practices: separation of concerns, reusability

---

## 🔧 Tools Required

- [Terraform](https://developer.hashicorp.com/terraform/downloads) v1.x
- AWS CLI with IAM access configured
- An AWS account

---

## 🧪 How to Run Any Project

### Step 1: Go to the project folder
```cd activity2```

### Step 2: Initialize Terraform
```terraform init```

### Step 3: Preview the changes (Plan)
```terraform plan -var-file="dev.tfvars"```
#### For QA environment, you can run:
```terraform plan -var-file="qa.tfvars"```

### Step 4: Apply the infrastructure
```terraform apply -var-file="dev.tfvars"```

### Step 5: Access the Resources
- For example, in activity2, you will get a public IP as output.
- Paste that IP in your browser to view the NGINX-hosted HTML page.

### Step 6: Tear Down the Infrastructure
```terraform destroy -var-file="dev.tfvars"```
#### You can also destroy the QA setup similarly:
```terraform destroy -var-file="qa.tfvars"```

