# AutoGen Docker Container for AI Agent Teams

## Overview

This repository contains a Dockerfile designed to set up and run a containerized environment to spin up AI agent teams using [AutoGen](https://github.com/microsoft/autogen). This setup simplifies the deployment and configuration of AI agent-based solutions both locally and on cloud services like Azure Container Instances (ACI). 

## Benefits

- **Scalable AI Agent Teams**: AutoGen enables easy deployment and management of AI agent teams that can work collaboratively on complex tasks, making it simple to automate workflows and processes.
- **Environment Consistency**: Using Docker ensures that the environment remains consistent across local and cloud deployments.
- **Customizable Setup**: Environment variables allow dynamic configuration, so you can easily modify URLs and file paths without changing the Dockerfile.
- **Cloud Ready**: The Docker image can be built and deployed in the cloud using Azure Container Registry (ACR) and Azure Container Instances (ACI) without requiring local builds.

## Getting Started

### Prerequisites
- [Docker](https://docs.docker.com/get-docker/) installed on your machine for local development.
- Azure CLI and Azure Container Registry (ACR) set up for cloud deployment.

## How to Set Up Locally

### 1. Clone this Repository
```bash
git clone https://github.com/your_username/your_repo.git
cd your_repo
