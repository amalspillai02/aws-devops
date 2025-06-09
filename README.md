# AWS DevOps Node.js Project

This project demonstrates a simple Node.js REST API deployed using Docker and automated with Terraform and GitHub Actions. It is designed to be part of an AWS DevOps workflow, provisioning infrastructure and deploying the app automatically.

---

## 🛠 Features

- Simple Node.js API using Express
- `/` endpoint returns a welcome message
- `/health` endpoint for health checks
- Dockerized setup for easy container management
- Infrastructure provisioning with Terraform
- CI/CD pipeline with GitHub Actions (`docker-deploy.yml`)

---

## 📁 Project Structure

```
.
├── app
│   ├── Dockerfile  # Docker image definition
│   ├── app.js  # Main Node.js application
│   └── package.json # Project metadata and dependencies
└── infra
│   ├── main.tf # AWS Infrastructure definition
│   ├── outputs.tf  # Terraform outputs 
│   ├── terraform.tfstate
│   ├── terraform.tfstate.backup
│   └── variables.tf # Terraform input variables
└──.github
    ├── workflows
        └── docker-deploy.yml   # GitHub Actions CI/CD workflow
```

---

## 🚀 Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/your-username/aws-devops.git
cd aws-devops
cd app
```

### 2. Install Dependencies

```bash
npm install
```

### 3. Run the App Locally

```bash
npm start
# or
node app.js
```

Visit:  
- [http://localhost:3000/](http://localhost:3000/)  
- [http://localhost:3000/health](http://localhost:3000/health)

---

## 🐳 Docker

### Build Docker Image

```bash
docker build -t aws-devops .
```

### Run Docker Container

```bash
docker run -p 3000:3000 aws-devops
```

---

## ☁️ AWS Deployment with Terraform

### Prerequisites

- AWS CLI configured
- Terraform installed
- IAM credentials set up
- ECR repo created in AWS
- Create secrets for github actions
    * EC2_HOST
    * EC2_SSH_KEY
    * AWS_ACCESS_KEY_ID
    * AWS_SECRET_ACCESS_KEY

### Steps

```bash
cd terraform
terraform init
terraform plan
terraform apply
```

---

## 🔄 CI/CD with GitHub Actions

This project includes a GitHub Actions workflow (`docker-deploy.yml`) that:

- Builds Docker image on push to `main`
- Authenticates with AWS
- Pushes image to Amazon ECR
- Deploys to EC2 or ECS (based on your workflow logic)

---

## 📄 License

MIT

---

## 🙋‍♂️ Author

Amal S. Pillai  
[LinkedIn](inkedin.com/in/amal-s-pillai-36344a230/) • [GitHub](https://github.com/amalspillai02)