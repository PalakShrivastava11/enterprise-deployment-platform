# enterprise-deployment-platform
An automated application deployment platform built using Python, Docker, GitHub Actions and AWS. The project implements a CI/CD pipeline that tests application code, builds and publishes Docker images, and deploys the application to an AWS EC2 instance through AWS Systems Manager (SSM).

The goal is to build a practical, end-to-end DevOps deployment workflow with secure cloud authentication, automated deployments, rollback and infrastructure automation.


## Architecture

```mermaid
flowchart LR
    A["GitHub Repository"] --> B["GitHub Actions: CI"]
    B --> C["Build & Push Docker Image"]
    C --> D["Docker Hub"]
    B --> E["GitHub Actions: CD"]
    E --> F["AWS OIDC + SSM"]
    D --> G["AWS EC2"]
    F --> G
    G --> H["Docker Container"]
    H --> I["Nginx"]
    I --> J["Live Application"]
```


