🚀 Terraform AWS EC2 Infrastructure Project (CI/CD Enabled)
📌 Overview

This project demonstrates how to provision and deploy a basic web server on AWS using Infrastructure as Code (IaC) with Terraform — fully automated using GitHub Actions CI/CD.

The setup automatically:

Provisions AWS infrastructure
Creates an EC2 instance
Configures security groups
Deploys a web server using User Data
Runs Terraform automatically via CI/CD pipeline

Built using:

Terraform (Infrastructure as Code)
AWS EC2 (Virtual Server)
AWS Security Groups
GitHub Actions (CI/CD)
User Data scripting for automation
🏗️ Architecture
📐 Infrastructure Flow
Developer Push
      │
      ▼
GitHub Repository
      │
      ▼
GitHub Actions (CI/CD Pipeline)
      │
      ├── terraform init
      ├── terraform validate
      └── terraform plan
      │
      ▼
AWS Provider (us-east-1)
      │
      ▼
Security Group (22, 80)
      │
      ▼
EC2 Instance (Web Server)
      │
      ▼
Public IP → Browser Access
⚙️ CI/CD Implementation

This project includes automated CI/CD using GitHub Actions.

✅ What Happens on Every Push
Code is pushed to GitHub
GitHub Actions workflow triggers automatically
Terraform initializes
Terraform validates configuration
Terraform generates execution plan
Pipeline completes with green status

This ensures:

No manual Terraform execution required
Infrastructure validation on every change
Secure credential handling
Consistent deployment workflow
🔐 AWS Authentication in CI/CD

AWS credentials are securely stored using GitHub Repository Secrets:

AWS_ACCESS_KEY_ID
AWS_SECRET_ACCESS_KEY

They are injected at runtime in GitHub Actions.

No credentials are hardcoded in Terraform files.

📁 Project Structure
terraform-aws-ec2-infra/
│
├── .github/
│   └── workflows/
│       └── terraform.yml
├── main.tf              # EC2 + Security Group
├── variables.tf         # Input variables
├── outputs.tf           # Public IP output
├── terraform.tfvars     # Variable values (ignored in git)
├── .gitignore           # Ignored files
└── README.md            # Project documentation
🚀 Local Deployment Steps (Optional)

If running manually:

1️⃣ Initialize Terraform
terraform init
2️⃣ Validate configuration
terraform validate
3️⃣ Plan infrastructure
terraform plan
4️⃣ Apply configuration
terraform apply

Type yes when prompted.

🌐 Access Web Server

After successful deployment, Terraform outputs a Public IP.

Open in browser and access the app:

http://<public-ip>

🧹 Destroy Infrastructure

To avoid AWS charges:

terraform destroy
🔒 Security Best Practices
.tfstate files excluded from Git
.pem keys not committed
IAM credentials never hardcoded
Secrets stored in GitHub Secrets
Principle of Least Privilege followed
🎯 DevOps Story (Interview Talking Points)

This project represents a production-style DevOps workflow.

🧠 Problem Statement

Manual AWS provisioning is time-consuming, inconsistent, and error-prone.

⚙️ My Solution

I automated infrastructure provisioning using Terraform and integrated it with GitHub Actions for CI/CD automation.

🚀 What This Project Demonstrates
Infrastructure as Code (IaC)
Automated provisioning without AWS Console
CI/CD-driven infrastructure validation
Secure credential management
Automated web server configuration using User Data
💡 Real-World DevOps Mapping
Concept	Implementation
IaC	Terraform configuration files
Compute	AWS EC2 instance
Networking	Security Groups (port 22, 80)
Automation	User Data script
CI/CD	GitHub Actions pipeline
Secrets Mgmt	GitHub Repository Secrets
Version Control	Git + GitHub
🧩 Interview Explanation (30-sec pitch)

“I built an automated AWS infrastructure deployment using Terraform and integrated it with GitHub Actions. On every code push, the pipeline initializes, validates, and plans the infrastructure automatically. The setup provisions an EC2 instance with proper security groups and deploys a web server using user data. This ensures reproducible, secure, and production-ready infrastructure.”

📊 Key Learnings
Infrastructure as Code with Terraform
AWS EC2 provisioning
Security Group configuration
Automating server setup with User Data
CI/CD integration with GitHub Actions
Secure secret handling in pipelines
📸 Screenshots
✅ GitHub Actions Pipeline (Green Status)

(Add screenshot of Actions tab showing green workflow run)

🌐 Web Server Output

![Web server output](images/image.png)

🖥 EC2 Instance Running

![(EC2 console screenshot)](images/image-1.png)

📦 Terraform Plan Output (when in local Log)

![(Terraform Plan screenshot)](images/image-2.png)

👨‍💻 Author

Rohit Bhatt

⭐ Future Improvements
Add remote backend (S3 + DynamoDB state locking)
Implement Terraform Apply with manual approval
Use OIDC authentication (no long-term access keys)
Add VPC module
Implement Load Balancer (ALB)
Add Auto Scaling Group
Multi-environment support (dev/stage/prod)
🏁 Conclusion

This project showcases a fully automated, CI/CD-enabled Terraform deployment on AWS. Infrastructure is now reproducible, secure, automated, and production-ready.