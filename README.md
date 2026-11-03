<div align="center">

# ☁️ AZURE TERRAFORM INFRASTRUCTURE

### Infrastructure as Code | Microsoft Azure | Terraform

<img src="https://img.shields.io/badge/Microsoft_Azure-Cloud-0078D4?style=for-the-badge&logo=microsoftazure&logoColor=white" />
<img src="https://img.shields.io/badge/Terraform-IaC-7B42BC?style=for-the-badge&logo=terraform&logoColor=white" />
<img src="https://img.shields.io/badge/Infrastructure-as_Code-623CE4?style=for-the-badge" />

<br/>

**Automating Azure Infrastructure with Terraform**

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=600&size=20&pause=1000&color=38BDF8&center=true&vCenter=true&width=650&lines=Azure+Infrastructure+Automation;Terraform+Infrastructure+as+Code;Cloud+Networking+%7C+Security+%7C+Compute" />

</div>

---

## 🌐 About This Repository

Welcome to **Azure-Terraform-Infrastructure**!

This repository contains Terraform configurations to provision and manage essential Microsoft Azure infrastructure resources using Infrastructure as Code (IaC).

The primary objective is to automate Azure resource deployment, maintain consistency, and follow Terraform best practices.

This repository currently focuses on six core Azure infrastructure components.

## 🏗️ Azure Resources Covered

<div align="center">

<table>
<tr>
<td align="center" width="33%">
<img src="https://img.icons8.com/color/96/microsoft-azure-1.png" width="55"/>
<br/><b>Resource Group</b>
<br/>Azure Resource Management
</td>
<td align="center" width="33%">
<img src="https://img.icons8.com/color/96/network.png" width="55"/>
<br/><b>Virtual Network</b>
<br/>Azure Networking
</td>
<td align="center" width="33%">
<img src="https://img.icons8.com/color/96/server.png" width="55"/>
<br/><b>Subnet</b>
<br/>Network Segmentation
</td>
</tr>
<tr>
<td align="center">
<img src="https://img.icons8.com/color/96/internet.png" width="55"/>
<br/><b>Public IP</b>
<br/>Public Connectivity
</td>
<td align="center">
<img src="https://img.icons8.com/color/96/lock.png" width="55"/>
<br/><b>Key Vault</b>
<br/>Secrets & Key Management
</td>
<td align="center">
<img src="https://img.icons8.com/color/96/virtual-machine.png" width="55"/>
<br/><b>Virtual Machine</b>
<br/>Azure Compute
</td>
</tr>
</table>

</div>

## 📦 Terraform Resources

| Azure Resource | Terraform Resource |
|:---|:---|
| Resource Group | `azurerm_resource_group` |
| Virtual Network | `azurerm_virtual_network` |
| Subnet | `azurerm_subnet` |
| Public IP | `azurerm_public_ip` |
| Key Vault | `azurerm_key_vault` |
| Virtual Machine | `azurerm_linux_virtual_machine` |

## 📂 Repository Structure

```text
Azure-Terraform-Infrastructure/
│
├── Resource-Group/
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
│
├── VNet/
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
│
├── Subnet/
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
│
├── Public-IP/
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
│
├── Key-Vault/
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
│
├── Virtual-Machine/
│   ├── main.tf
