# Sad Cloud Customization

This repository is designed to establish a **vulnerable cloud environment** for learning purposes. It allows users to scan, identify, and harden misconfigurations and vulnerabilities in AWS services. The configurations provided here intentionally include insecure settings to simulate real-world scenarios for security training and testing.

## Purpose
The primary goal of this repository is to:
- Provide a sandbox environment for learning cloud security.
- Demonstrate common misconfigurations in AWS services.
- Enable users to practice scanning and hardening techniques.

**Warning:** Do not deploy this environment in a production account. Use a dedicated AWS account for testing and learning.

---

## Services and Configurations
This repository includes Terraform modules for various AWS services. Below is a detailed explanation of the services and their configurations:

### 1. **VPC and Networking**
- **Module:** `network`
- **Description:** Creates a single VPC with a subnet, internet gateway, and associated route table.
- **Purpose:** Simulates a basic network setup with potential misconfigurations in routing and subnet isolation.

### 2. **IAM (Identity and Access Management)**
- **Module:** `iam`
- **Description:** Configures IAM policies and roles with insecure settings, such as weak password policies and overly permissive roles.
- **Purpose:** Demonstrates risks associated with poor IAM configurations.

### 3. **CloudTrail**
- **Module:** `cloudtrail`
- **Description:** Sets up CloudTrail with potential misconfigurations, such as disabled logging or missing log file validation.
- **Purpose:** Highlights the importance of proper logging and monitoring.

### 4. **AWS Config**
- **Module:** `config`
- **Description:** Deploys AWS Config with incomplete or missing rules.
- **Purpose:** Demonstrates the impact of inadequate resource compliance monitoring.

### 5. **CloudWatch**
- **Module:** `cloudwatch`
- **Description:** Configures CloudWatch alarms with missing actions.
- **Purpose:** Shows the risks of insufficient alerting mechanisms.

### 6. **S3 (Simple Storage Service)**
- **Module:** `s3`
- **Description:** Creates S3 buckets with insecure settings, such as public access, no encryption, and no versioning.
- **Purpose:** Demonstrates common S3 misconfigurations and their impact.

### 7. **RDS (Relational Database Service)**
- **Module:** `rds`
- **Description:** Deploys RDS instances with insecure settings, such as no encryption, no backups, and public accessibility.
- **Purpose:** Highlights the risks of poorly configured databases.

### 8. **EC2 (Elastic Compute Cloud)**
- **Module:** `ec2`
- **Description:** Launches EC2 instances with misconfigured security groups and public IPs.
- **Purpose:** Demonstrates the risks of improperly secured compute resources.

### 9. **ELB (Elastic Load Balancer)**
- **Module:** `elb`
- **Description:** Configures ELBs with missing access logs.
- **Purpose:** Highlights the importance of proper logging in load balancers.

### 10. **KMS (Key Management Service)**
- **Module:** `kms`
- **Description:** Deploys KMS keys with disabled rotation and exposed keys.
- **Purpose:** Demonstrates the risks of improper key management.

## **Vulnerabilities in the Setup**
This setup intentionally includes the following vulnerabilities for learning purposes:

- **IAM Misconfigurations**:
  - Weak password policies.
  - Overly permissive roles and policies.
- **Logging and Monitoring Issues**:
  - Disabled CloudTrail logging.
  - Missing log file validation.
  - Incomplete AWS Config rules.
- **S3 Bucket Misconfigurations**:
  - Public access enabled.
  - No encryption or versioning.
- **Database Vulnerabilities**:
  - Publicly accessible RDS instances.
  - No backups or encryption.
- **Network Security Issues**:
  - Overly permissive security groups.
  - Public IPs assigned to EC2 instances.
- **Key Management Weaknesses**:
  - Disabled KMS key rotation.
  - Exposed KMS keys.
- **Load Balancer Misconfigurations**:
  - Missing access logs in ELBs.

## Customizing Vulnerabilities
You can toggle specific vulnerabilities by modifying the variables in the `terraform.tfvars` file. For example:
- Set `all_iam_findings = false` to disable IAM-related vulnerabilities.
- Set `all_s3_findings = false` to secure S3 buckets.
- Adjust other variables to enable or disable specific misconfigurations.

Refer to the `variables.tf` file for a complete list of configurable options.

---

## How to Use
1. **Clone the Repository:**
   ```bash
   git clone https://github.com/your-repo/sad-cloud.git
   cd sad-cloud
   ```
2. **Add authentication data:**  
   Create a ```providers.tf``` file inside the sadcloud directory and insert your aws access key, secret key and region.

3. **Initialize Terraform:**
   ```bash
   terraform init
   ```

4. **Review and Apply Configuration:**
   ```bash
   terraform plan
   terraform apply
   ```
