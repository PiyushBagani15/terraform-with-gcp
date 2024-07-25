# Terraform with GCP - Task 1

## Overview
This repository contains the Terraform configuration files used for Task 1 in our series of tasks designed to automate the provisioning of infrastructure on Google Cloud Platform (GCP) using Terraform. This task demonstrates how to set up a basic cloud infrastructure which includes features like [specify features, e.g., VM instances, networking components, etc.].

## Prerequisites
Before you begin, ensure you have the following prerequisites installed and set up:
- Google Cloud Platform account
- Terraform v1.0 or later
- Google Cloud SDK
- Properly configured GCP credentials (e.g., service account key file)

## Project Structure
## Project Structure

The following is the directory structure of this Terraform project:

```
Task-1/
    ├── main.tf
    ├── terraform.tfvars
    ├── variables.tf
    ├── outputs.tf
    └── README.md
```

## Configuration Details
- **main.tf**: Contains the primary set of configurations that define the resources to be provisioned in GCP.
- **variables.tf**: Defines the variables used across all Terraform configuration files.
- **outputs.tf**: Specifies the output information after Terraform execution.

## Usage
To use this Terraform setup, follow these steps:
1. Clone the repository:

```
git clone https://github.com/PiyushBagani15/terraform-with-gcp.git
cd terraform-with-gcp/Task-1
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
You can customize the Terraform configurations by modifying the variables in `variables.tf`. For example, you can change the settings for the type and number of resources to be provisioned.

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
