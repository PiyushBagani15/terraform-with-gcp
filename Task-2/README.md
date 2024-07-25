# Terraform with GCP - Task 2

## Overview
This repository contains the Terraform configuration files used for Task 2 in our series of tasks designed to automate the provisioning of infrastructure on the Google Cloud Platform (GCP) using Terraform. This task demonstrates how to set up a VPC, subnet and a basic cloud run service in GCP.

## Prerequisites
Before you begin, ensure you have the following prerequisites installed and set up:
- Google Cloud Platform account
- Terraform v1.0 or later
- Google Cloud SDK
- Properly configured GCP credentials (e.g., service account key file)

## Project Structure

The following is the directory structure of this Terraform project:

```
Task-2/
├── main.tf
├── modules
│   ├── cloud-run
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   ├── README.md
│   │   └── variables.tf
│   └── networking
│       ├── main.tf
│       ├── outputs.tf
│       ├── README.md
│       └── variables.tf
├── outputs.tf
├── providers.tf
├── terraform.tfvars
└── variables.tf
```

## Configuration Details
- **main.tf**: Contains the primary set of configurations that define the resources to be provisioned in GCP.
- **variables.tf**: Defines the variables used across all Terraform configuration files.
- **outputs.tf**: Specifies the output information after Terraform execution.
- **terraform.tfvars**: Specifies the values to variables essential for Terraform execution.

## Usage
To use this Terraform setup, follow these steps:
1. Clone the repository:

```
git clone https://github.com/PiyushBagani15/terraform-with-gcp.git
cd terraform-with-gcp/Task-2
```
2. Initialize Terraform:


```
terraform init
```
3. Plan

```
terraform plan
```
4. Apply the configuration

```
terraform apply 
```
## Customization
You can customize the Terraform configurations by modifying the variables in `terraform.tfvars`. For example, you can change the settings for number of resources to be provisioned.

## Contributing
Contributions to this project are welcome. To contribute:
1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Make your changes and commit them (`git commit -am 'Add some feature'`).
4. Push to the branch (`git push origin feature-branch`).
5. Create a new Pull Request.

## Authors
- [Piyush Bagani](https://github.com/PiyushBagani15)

## Acknowledgments
Thanks to all contributors who have helped with the development of this Terraform module.
