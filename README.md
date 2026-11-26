# enterprise-deployment-platform
An automated application deployment platform built using Python, Docker, GitHub Actions and AWS. The project implements a CI/CD pipeline that tests application code, builds and publishes Docker images, and deploys the application to an AWS EC2 instance through AWS Systems Manager (SSM).

The goal is to build a practical, end-to-end DevOps deployment workflow with secure cloud authentication, automated deployments, rollback and infrastructure automation.


## Architecture

```mermaid
flowchart LR
    A["GitHub<br/>Source Code"] --> B["GitHub Actions<br/>CI: Test Application"]
    B --> C["Docker Hub<br/>Build & Store Image"]
    C --> D["GitHub Actions<br/>CD: Deploy"]
    D --> E["AWS OIDC + SSM"]
    E --> F["AWS EC2<br/>Docker Container"]
    F --> G["Nginx"]
    G --> H["Live Application"]


