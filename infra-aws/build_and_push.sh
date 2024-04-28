#!/bin/bash

# Ask for the ECR repository URL
read -p "Enter the ECR repository URL: " REPO_URL

# Authenticate Docker to the ECR registry
aws ecr get-login-password --region eu-central-1 | sudo docker login --username AWS --password-stdin ${REPO_URL}

# List of services to build and push
services=("customer-core" "customer-management-backend" "customer-management-frontend" "customer-self-service-backend" "customer-self-service-frontend" "policy-management-backend" "policy-management-frontend" "risk-management-client" "risk-management-server" "spring-boot-admin")

# Loop through each service, build and push Docker images
for service in "${services[@]}"
do
  echo "Building and pushing $service"
  cd "$service"
  sudo docker build -t ${REPO_URL}:${service}-latest .
  sudo docker push ${REPO_URL}:${service}-latest
  cd ..
done

echo "Docker images built and pushed successfully."

