# Terraform Custom Subnet Project

## Overview
This project uses Terraform to create a custom AWS network environment, including:

- **VPC (Virtual Private Cloud)** with a specific IP range  
- **Public Subnet** inside the VPC  
- **EC2 Instance** launched within the public subnet  

This setup is useful for practicing AWS infrastructure as code and for creating a basic, customizable cloud network environment.

## What It Does
- Creates a VPC with the CIDR block `10.0.0.0/16`  
- Creates a public subnet inside the VPC with CIDR `10.0.1.0/24`  
- Launches an EC2 instance inside the public subnet using specified AMI and instance type  
- Outputs the IDs of the created instance and subnet for easy reference

## How to Use
1. Configure your AWS credentials locally  
2. Run `terraform init` to initialize the project  
3. Run `terraform apply` to create the resources  
4. Review the output for instance and subnet IDs  
5. Use `terraform destroy` to clean up the environment when done  

## Variables
- `region`: AWS region to deploy resources (default: `us-east-1`)  
- `ami`: AMI ID to use for the EC2 instance  
- `instance_type`: Type of EC2 instance (default: `t2.micro`)  
- `instance_name`: Tag name for the EC2 instance  

