# Azure-Terraform-Infrastructure-Rg_Vnet_Subnet_PIP__KV__VM
<!-- ===================================================== -->
<!-- AZURE TERRAFORM INFRASTRUCTURE - GITHUB README -->
<!-- ===================================================== -->

<div align="center">

# ☁️ AZURE TERRAFORM INFRASTRUCTURE

### 🚀 Infrastructure as Code | Microsoft Azure | Terraform

<img src="https://img.shields.io/badge/Microsoft_Azure-Cloud-0078D4?style=for-the-badge&logo=microsoftazure&logoColor=white" />
<img src="https://img.shields.io/badge/Terraform-IaC-7B42BC?style=for-the-badge&logo=terraform&logoColor=white" />
<img src="https://img.shields.io/badge/Infrastructure-as_Code-623CE4?style=for-the-badge" />
<img src="https://img.shields.io/badge/DevOps-Automation-2496ED?style=for-the-badge&logo=docker&logoColor=white" />

<br/>

**Building Secure | Scalable | Automated Azure Infrastructure**

<br/>

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=600&size=20&pause=1000&color=38BDF8&center=true&vCenter=true&width=650&lines=Automating+Azure+Infrastructure;Terraform+Infrastructure+as+Code;Cloud+Networking+%7C+Security+%7C+Compute;Production+Oriented+Cloud+Engineering" />

<br/>

</div>

---

## 🌐 About This Repository

Welcome to **Azure-Terraform-Infrastructure**!

This repository contains a collection of Terraform configurations designed to provision, automate, and manage Microsoft Azure infrastructure using Infrastructure as Code (IaC).

The objective is to build real-world, scalable, secure, and production-oriented Azure infrastructure while following Terraform best practices and cloud architecture standards.

From basic Azure resource provisioning to advanced networking and security implementations, this repository serves as a centralized collection of Azure Terraform projects.

---

## 🏗️ Azure Infrastructure Components

<div align="center">

<table>
<tr>
<td align="center" width="33%">
<img src="https://img.icons8.com/color/96/microsoft-azure-1.png" width="55"/>
<br/><b>Resource Management</b>
<br/>Resource Groups
</td>
<td align="center" width="33%">
<img src="https://img.icons8.com/color/96/network.png" width="55"/>
<br/><b>Networking</b>
<br/>VNet | Subnet | Peering
</td>
<td align="center" width="33%">
<img src="https://img.icons8.com/color/96/server.png" width="55"/>
<br/><b>Compute</b>
<br/>Azure Virtual Machines
</td>
</tr>
<tr>
<td align="center">
<img src="https://img.icons8.com/color/96/database.png" width="55"/>
<br/><b>Storage</b>
<br/>Storage Accounts
</td>
<td align="center">
<img src="https://img.icons8.com/color/96/lock.png" width="55"/>
<br/><b>Security</b>
<br/>Key Vault | NSG | RBAC
</td>
<td align="center">
<img src="https://img.icons8.com/color/96/cloud-network.png" width="55"/>
<br/><b>Private Connectivity</b>
<br/>Private Endpoint | DNS
</td>
</tr>
</table>

</div>

---

## 📦 Terraform Resource Inventory

| Azure Service | Terraform Implementation |
|:---|:---|
| Resource Group | `azurerm_resource_group` |
| Virtual Network | `azurerm_virtual_network` |
| Subnet | `azurerm_subnet` |
| Public IP | `azurerm_public_ip` |
| Network Security Group | `azurerm_network_security_group` |
| Storage Account | `azurerm_storage_account` |
| Key Vault | `azurerm_key_vault` |
| Virtual Machine | `azurerm_linux_virtual_machine` |
| Private Endpoint | `azurerm_private_endpoint` |
| Private DNS Zone | `azurerm_private_dns_zone` |
| VNet Peering | `azurerm_virtual_network_peering` |

---

## 📂 Repository Architecture

```text
Azure-Terraform-Infrastructure/
│
├── Resource-Group/
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
│
├── Networking/
│   ├── VNet/
│   ├── Subnet/
│   ├── Public-IP/
│   ├── NSG/
│   └── VNet-Peering/
│
├── Security/
│   ├── Key-Vault/
│   ├── Private-Endpoint/
│   └── Private-DNS/
│
├── Compute/
│   └── Virtual-Machine/
│
├── Storage/
│   └── Storage-Account/
│
├── Modules/
│
├── Environments/
│   ├── Dev/
│   ├── Test/
│   ├── UAT/
│   └── Prod/
│
└── README.md
```

---

## 🔧 Technology Stack

<div align="center">

<img src="https://skillicons.dev/icons?i=azure,terraform,git,github,bash,powershell,docker,kubernetes,vscode" />

<br/><br/>

<img src="https://img.shields.io/badge/Azure_DevOps-CI%2FCD-0078D7?style=flat-square&logo=azuredevops"/>
<img src="https://img.shields.io/badge/GitHub-Actions-2088FF?style=flat-square&logo=githubactions"/>
<img src="https://img.shields.io/badge/Checkov-Security-5C2D91?style=flat-square"/>
<img src="https://img.shields.io/badge/tfsec-IaC_Security-7B42BC?style=flat-square"/>

</div>

---

## 🚀 Getting Started

### 1️⃣ Prerequisites

- Microsoft Azure Subscription
- Azure CLI
- Terraform CLI
- Git
- Visual Studio Code

### 2️⃣ Clone Repository

```bash
git clone https://github.com/YOUR-USERNAME/Azure-Terraform-Infrastructure.git

cd Azure-Terraform-Infrastructure
```

### 3️⃣ Authenticate with Azure

```bash
az login
az account show
```

### 4️⃣ Initialize Terraform

Navigate to the required project directory:

```bash
cd Resource-Group

terraform init
```

### 5️⃣ Validate Terraform Configuration

```bash
terraform fmt -recursive
terraform validate
```

### 6️⃣ Generate Execution Plan

```bash
terraform plan
```

### 7️⃣ Deploy Infrastructure

```bash
terraform apply
```

---

## 🔐 Security & Governance

Security is an important part of every infrastructure deployment.

This repository focuses on:

- Azure RBAC and Least Privilege Access
- Azure Key Vault integration
- Private Endpoint connectivity
- Network Security Groups
- Secure Terraform State Management
- Infrastructure validation
- Terraform security scanning using Checkov and tfsec
- Environment-based deployment strategies

**Important:** Never commit credentials, secrets, `.tfstate` files, or sensitive `.tfvars` files to GitHub.

---

## 🏢 Architecture Roadmap

<div align="center">

| Implementation | Status |
|:---|:---:|
| Resource Group Provisioning | 🟢 |
| VNet & Subnet Deployment | 🟢 |
| Public IP Configuration | 🟢 |
| Storage Account | 🟡 |
| Azure Key Vault | 🟡 |
| Private Endpoint & DNS | 🟡 |
| Hub & Spoke Architecture | 🔵 |
| Azure Landing Zones | 🔵 |
| Terraform Reusable Modules | 🔵 |
| Azure DevOps CI/CD | 🔵 |
| DevSecOps Integration | 🔵 |
| AKS Infrastructure | 🔵 |

</div>

<sub>🟢 Implemented &nbsp; 🟡 In Progress &nbsp; 🔵 Planned</sub>

---

## 📈 My Infrastructure Engineering Approach

```text
     GitHub Repository
            |
            ▼
     Terraform Code
            |
            ▼
     Terraform Init
            |
            ▼
    Terraform Validate
            |
            ▼
     Terraform Plan
            |
            ▼
      Security Scan
            |
            ▼
     Terraform Apply
            |
            ▼
    Microsoft Azure
            |
            ▼
  Infrastructure Monitoring
```

---

## 🎯 Future Enhancements

- [ ] Enterprise Azure Landing Zone
- [ ] Hub-and-Spoke Network Architecture
- [ ] Terraform Module Standardization
- [ ] Remote State with Azure Storage
- [ ] Azure DevOps CI/CD Automation
- [ ] Terraform Plan & Apply Approval Workflow
- [ ] DevSecOps Security Integration
- [ ] AKS Cluster Provisioning
- [ ] Azure Monitor & Log Analytics
- [ ] Multi-Subscription Infrastructure Automation

---

## 👨‍💻 Maintainer

<div align="center">

### CHETAN SAMRA

**Azure Cloud Engineer | DevOps Engineer | Terraform Enthusiast**

13 Years of Overall IT Experience | 5+ Years in Cloud & DevOps Engineering

<br/>

<a href="https://github.com/YOUR-USERNAME">
<img src="https://img.shields.io/badge/GitHub-Follow_Me-181717?style=for-the-badge&logo=github"/>
</a>

<br/><br/>

**Building | Automating | Securing | Scaling**

⭐ If you find this repository useful, don't forget to Star it!

</div>

---

<div align="center">

<sub>© 2026 Chetan Samra | Azure Terraform Infrastructure | Built with ❤️ for Cloud & DevOps Engineering</sub>

</div>
