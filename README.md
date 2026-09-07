# Generic CI/CD Template

This repository contains a generic, fully-functional CI/CD pipeline built for GitHub Actions. It perfectly replicates the security and deployment steps for a modern cloud application.

## Pipeline Steps
1. **Secret Scanning:** Uses TruffleHog to detect leaked API keys or passwords.
2. **Docker Build:** Builds a generic Docker image of your app.
3. **Vulnerability Scanning:** Uses Trivy to scan the Docker image for critical CVEs.
4. **AWS OIDC Auth:** Securely authenticates to AWS without storing permanent credentials.
5. **ECR Push:** Uploads the secure image to Amazon Elastic Container Registry.

## What you need to do next to use this:

1. **Upload to GitHub:** Push this folder to a GitHub repository.
2. **AWS Setup:**
   - Create an ECR repository in your AWS account.
   - Set up an OIDC Identity Provider in AWS IAM pointing to GitHub (`token.actions.githubusercontent.com`).
   - Create an IAM Role that allows pushing to ECR, and attach it to the OIDC provider.
3. **Update the Pipeline:** Open `.github/workflows/deploy.yml` and replace:
   - `arn:aws:iam::123456789012:role/GitHubActionsRole` with your actual IAM role ARN.
   - `my-generic-app` with your actual ECR repository name.

Enjoy your automated, secure deployments!
