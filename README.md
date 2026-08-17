
# DevOps & Cloud Engineering Study Roadmap: Full-Time Intensive

This document outlines an intensive 12-week, full-time study roadmap to master your DevOps toolset. The curriculum is sequential, ensuring each tool builds upon the previous one.

---

## Phase 1: Foundations
### Chapter 1: Linux & Git Deep Dive (Week 1)
*   **Linux Focus:** Systemd services, permissions, SSH tunneling, advanced shell scripting, and log management.
*   **Git Focus:** Branching strategies (GitFlow), advanced rebasing, merge conflict resolution, and PR workflows.
*   **Lab Goal:** Automate a local Linux server setup via Bash and manage the configuration via a structured GitHub repository.

---

## Phase 2: Containerization
### Chapter 2: Docker & Docker Swarm (Weeks 2-3)
*   **Docker Focus:** Writing production-ready `Dockerfile`s, multi-stage builds, volumes, persistent storage, and private registry management.
*   **Swarm Focus:** Service scaling, node orchestration, and internal networking.
*   **Lab Goal:** Containerize a multi-tier web application and orchestrate deployment using Docker Swarm.

---

## Phase 3: Cloud Infrastructure
### Chapter 3: AWS (ECS, ECR & Networking) (Weeks 4-5)
*   **AWS Networking:** Designing VPCs, subnets (Public/Private), route tables, and security groups.
*   **ECS/ECR:** Pushing images to ECR, creating task definitions, deploying Fargate services, and configuring Load Balancers.
*   **Lab Goal:** Deploy your containerized application from Phase 2 into a secure, manually provisioned AWS VPC.

---

## Phase 4: Automation & IaC
### Chapter 4: Terraform (Weeks 6-7)
*   **Terraform Focus:** HCL syntax, state file management, modules, and providers.
*   **Lab Goal:** Replace your manual AWS setup from Chapter 3 with Infrastructure as Code.

### Chapter 5: Advanced Ansible (Week 7)
*   **Ansible Focus:** Roles, Playbooks, Jinja2 templates, and **Dynamic Inventory** (linking Terraform-created resources to Ansible).
*   **Lab Goal:** Automate the configuration of EC2 instances provisioned by Terraform.

---

## Phase 5: Orchestration & CI/CD
### Chapter 6: Kubernetes & EKS (Weeks 8-9)
*   **Kubernetes:** Pods, Deployments, Services, ConfigMaps, Secrets, and Namespaces.
*   **EKS:** Provisioning and managing a managed Kubernetes cluster on AWS.
*   **Lab Goal:** Migrate your ECS deployment to an EKS cluster using `kubectl` and manifest files.

### Chapter 7: GitHub Actions (Week 10)
*   **CI/CD:** Building automated pipelines for testing, building Docker images, and deploying infrastructure changes.
*   **Lab Goal:** Create a full "Code-to-Cloud" pipeline that triggers on `main` branch pushes.

---

## Phase 6: Finalization
### Chapter 8: Capstone Project & Interview Prep (Weeks 11-12)
*   **Capstone:** End-to-end integration of all tools into a single, scalable web stack.
*   **Portfolio:** Documentation of all lab projects, creating professional READMEs, and technical interview preparation.
