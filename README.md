
# Launch an RDS instance using Terraform

We'll use the following terraform files:
    • main.tf
    • output.tf
    • provider.tf
    • terraform.tfvars
    • varaibles.tf
    • versions.tf
    • .gitignore
# main.tf

- resource "aws_db_subnet_group" "mydb_subnet_groups" {
- name = var.name
- subnet_ids = var.subnet_ids
- }
- resource "aws_db_instance" "ourdb" {
- identifier = var.identifier
- engine = var.engine 
- engine_version = var.engine_version
- instance_class = var.instance_class
- allocated_storage = var.allocated_storage 
- storage_type = var.storage_type
- storage_encrypted = var.storage_encrypted 
- db_subnet_group_name = var.db_subnet_group_name
- db_name =var.db_name 
- username = var.username 
- password = var.password 
- parameter_group_name = var.parameter_group_name
- publicly_accessible = var.publicly_accessible
-}

# provider.tf

- provider "aws" {
- region = "us-east-1"
-}

# terraform.tfvars

- name = "mydb-subnet-groups"
- subnet_ids = ["subnet-061c5aa91120d6221", "subnet-032fb21e1ee472561"]
- identifier = "ourdb"
- engine = "postgres"
- engine_version = "12.7"
- instance_class = "db.t3.micro"
- allocated_storage = 10
- storage_type = "gp2"
- storage_encrypted = true
- db_subnet_group_name = "mydb-subnet-groups"
- db_name = "ourdatabase"
- username = "naga"
- password = "password"
- parameter_group_name = "default.postgres12"
- publicly_accessible = true

# variable.tf

- variable "name" {}
- variable "subnet_ids" {}
- variable "engine" {}
- variable "engine_version" {}
- variable "allocated_storage" {}
- variable "storage_type" {}
- variable "storage_encrypted" {}
- variable "db_subnet_group_name" {}
- variable "db_name"{}
- variable "username"{}
- variable "password"{}
- variable "parameter_group_name" {}
- variable "publicly_accessible" {}
- variable "instance_class"{}
- variable "identifier" {}

# versions 

- terraform {

- required_version = ">= 1.3.9"
- }

 # gitignore
           *.terraform*
           *.terraform.lock.hcl*
           *terraform.tfstate*
           *terraform.tfstate.backup*

# commands used
        i. terraform init Initializing the backend... Initializing provider plugins...
        ii. terraform apply
        iii. terraform destroy
        iv. terraform init -migrate-state
        v. terraform init -reconfigure
