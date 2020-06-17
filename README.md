# udacity-capstone
Repository for the udacity capstone project

## Summary 

This project attempts to deploy the house prices predictor app from the Microservices at Scale using AWS and Kubernetes Course

## Descriptions

- *aws-provision* : This folder contains the necessary scripts to 
  - Create an Infrastructure with VPC and Subnets
  - Create a Kubernetes cluster with EKS (Switched to eksctl from Amazon CLI since it was way easier :P)
  - Create the necessary worker nodes and associate them with the cluster
  - A deployment and service YML file 
  
- *base* : The base folder contains all of the script to build the dockerized app and a redundant kubernetes script (Not used here)

- *Jenkisfile* : The Jenkinsfile has the following stages
  1. Setup
  2. Linting
  3. Building Docker
  4. Pushing Docker
  5. Deploying Kubernetes
