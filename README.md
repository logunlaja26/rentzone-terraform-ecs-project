# Dynamic Web App Deployment on AWS with Terraform, Docker, ECR, and ECS

## Project Overview

This project involved deploying a dynamic web application on AWS using a containerized architecture. The infrastructure was provisioned with Terraform, utilizing AWS services such as ECS, ECR, ALB, and CloudWatch. The infrastructure setup ensures scalability, security, and efficient management of containerized applications.

---

## Architecture Overview

The architecture for deploying the dynamic web application on AWS is designed for scalability, security, and high availability. Below is an overview of the components involved:

1. **Terraform**: 
   - The entire infrastructure is provisioned using Terraform to automate the creation of AWS resources in a repeatable and consistent manner.
   - Terraform modules are used to organize the infrastructure code and enable reuse.

2. **Docker & Amazon ECR**: 
   - The web application is containerized using Docker, making it portable and easy to deploy across different environments.
   - Docker images are pushed to **Amazon Elastic Container Registry (ECR)**, where they are stored securely for deployment.

3. **Amazon ECS (Elastic Container Service)**: 
   - **Amazon ECS** is used to orchestrate the containers, ensuring that they run smoothly across a cluster of EC2 instances.
   - ECS tasks are automatically distributed across the cluster and scaled up or down based on demand.

4. **Application Load Balancer (ALB)**: 
   - An **ALB** is used to distribute incoming traffic across ECS tasks, ensuring that requests are efficiently routed to the appropriate containers.
   - The ALB also provides high availability and fault tolerance for the web application.

5. **VPC & Subnets**: 
   - A **Virtual Private Cloud (VPC)** is created to isolate the application’s network resources securely.
   - The VPC is split into **public and private subnets** to enhance security and allow for better resource segmentation.

6. **Security Groups & IAM Roles**: 
   - **Security Groups** act as virtual firewalls to control inbound and outbound traffic to the ECS tasks and other AWS resources.
   - **IAM Roles** and policies are defined to ensure that each component has the necessary permissions to interact securely with AWS resources.

7. **Auto Scaling**: 
   - **Auto Scaling** is configured for ECS tasks to adjust the number of running containers based on traffic and resource demand, ensuring that the application can scale as needed.

8. **CloudWatch Monitoring & Logging**: 
   - **Amazon CloudWatch** is used for monitoring ECS tasks and other AWS resources, allowing for real-time insights into application health and performance.
   - CloudWatch logs are configured to capture detailed information on application behavior for troubleshooting and performance analysis.

9. **Remote Backend with S3 & DynamoDB**: 
   - **S3** is used as the remote backend to store Terraform state files, while **DynamoDB** enables state locking to avoid conflicts during concurrent modifications to the Terraform state.

---

## Infrastructure Setup

1. **Provision AWS Resources with Terraform**
   - Designed and implemented the infrastructure using Terraform to provision essential AWS resources.
   - Configured and managed ECS clusters, networking, security, and other AWS services.

2. **ECS Cluster Configuration**
   - Set up an ECS cluster to manage containerized applications and ensure scalability.
   - Integrated ECS with an Application Load Balancer (ALB) for efficient traffic distribution.

3. **Networking and Security**
   - Created a Virtual Private Cloud (VPC) with public and private subnets for secure and segmented networking.
   - Configured security groups to ensure only necessary communication and restrict unauthorized access.

4. **Auto Scaling**
   - Set up ECS Auto Scaling policies to ensure the application can handle varying workloads automatically.
   - Ensured that resources scale according to demand, optimizing performance and cost.

5. **IAM Roles & Policies**
   - Defined IAM roles and policies to provide secure and granular access to AWS resources.
   - Ensured that each service has the appropriate permissions for optimal functionality.

6. **Remote Backend with S3 & DynamoDB**
   - Configured S3 as the remote backend to store Terraform state files securely.
   - Enabled state locking using DynamoDB to prevent concurrent modifications to the state files.

7. **CloudWatch Integration**
   - Set up CloudWatch for real-time monitoring of ECS services and AWS infrastructure.
   - Configured log streams to capture key events and metrics for debugging and performance monitoring.

8. **Testing and Validation**
   - Deployed the infrastructure to a staging environment to test and validate the deployment.
   - Ensured all components functioned correctly before moving to production.

9. **Documentation**
   - Documented the entire infrastructure setup and deployment process for future reference and knowledge transfer.

---

## How to Use

### Prerequisites
- Terraform (version 1.x or higher)
- Docker (installed and configured)
- AWS CLI (configured with your credentials)
- An AWS account with necessary permissions

### Steps to Deploy
1. Clone this repository.
2. Navigate to the Terraform directory.
3. Initialize Terraform:
   ```bash
   terraform init
   ```
4. Review the infrastructure plan:
   ```bash
   terraform plan
   ```
5. Apply the changes to deploy the infrastructure:
   ```bash
   terraform apply
   ```
6. Once the infrastructure is deployed, verify that the ECS service is running and accessible via the ALB.

---

## Future Improvements
- Automate CI/CD pipeline for seamless deployments.
- Add auto-healing features for ECS tasks to improve reliability.

---

## Conclusion

This project successfully deployed a dynamic web application on AWS with a highly automated and scalable infrastructure. By leveraging Terraform, Docker, ECS, and other AWS services, the deployment process is both repeatable and secure. The infrastructure is well-documented for future enhancements and management.

