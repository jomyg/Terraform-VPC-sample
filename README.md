# AWS VPC Terraform

Terraform module which creates VPC resources on AWS.

## Brief description

This module will provision a new VPC with 3 public and 3 private subnets along with their public and private route tables. The private route table is configured with NAT gateway. The public route table is configured with Internet gateway. Furthermore, this script will also provision an EC2 bastion server with its custom security group.

## Usage

This script creates a VPC along with its related modules :
1. Public and private subnets
2. Public and private route tables
3. Elastic IPs
4. NAT Gateways
5. An Internet Gateway
6. Security group for bastion EC2 instance
7. A bastion EC2 instance

## Prerequisites

- [Terraform v1.0.11](https://www.terraform.io/downloads.html)
- IAM user with administrator access to EC2.
- You can also setup this via IAM Role feature. Just attach the role on the server which we used to run the terraform file or code. 

## Terraform Installation

```
$ wget https://releases.hashicorp.com/terraform/1.0.11/terraform_1.0.11_linux_amd64.zip
$ unzip terraform_1.0.11_linux_amd64.zip
$ mv terraform /usr/bin/
```
## Variables used 

- region - Region of the VPC (default: us-east-2)
- cidr_block - CIDR block for the VPC (default: 10.0.0.0/16)
- project - Name of project this VPC is meant for (default: demo)
- ami - Bastion Amazon Machine Image (AMI) ID
- type - Instance type for bastion instance (default: t2.micro)
- key - EC2 Key pair name for the bastion
- access_key - access key id for the IAM user
- secret_key - secret key for the IAM user

## How to Configure

Initially, the file variables.tf will contain the variables used in the script. This can be modified according to the requirements in the default section like below.
```
variable "region" {
  default = "us-east-2" #provide your required region here instead of us-east-2
}
```

## Installation

Navigate to the project directory where the files are to be installed and follow the below steps

```
$ git clone https://github.com/jomyg/Terraform-VPC-sample.git
```
Next, use the 'terraform init' command is used to initialize a working directory containing Terraform configuration files.
```
$ terraform init
```
Then, use 'terraform plan' command to create an execution plan and then use 'terraform apply' to execute the plan. 
```
$ terraform plan
$ terraform apply
```

## Result

After the execution of this script, you will have a VPC which contains 3 public subnet as well as 3 private subnet ready to use. Also, EC2 bastion server with its custom security group attached to one of the public subnet.

### ⚙️ Connect with Me 

<p align="center">
<a href="mailto:jomyambattil@gmail.com"><img src="https://img.shields.io/badge/Gmail-D14836?style=for-the-badge&logo=gmail&logoColor=white"/></a>
<a href="https://www.linkedin.com/in/jomygeorge11"><img src="https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white"/></a> 
<a href="https://www.instagram.com/therealjomy"><img src="https://img.shields.io/badge/Instagram-E4405F?style=for-the-badge&logo=instagram&logoColor=white"/></a><br />


