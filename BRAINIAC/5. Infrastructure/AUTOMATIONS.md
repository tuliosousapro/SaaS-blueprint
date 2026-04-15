# Automations, Skills, and Tools: Infrastructure Phase

Ship robust infrastructure automatically without DevOps headaches.

## 1. CI/CD Pipeline Automation
- **Tool**: GitHub Actions templates
- **Use Case**: Ensure code is linted, built, and deployed on every push without manual steps.
- **Skill Implementation**: Deploy pre-built `deploy.yml` workflows customized for your specific stack (e.g., Vercel + Supabase) that trigger on main branch updates.

## 2. Infrastructure as Code (IaC) Scripts
- **Tool**: Pulumi / Terraform automation
- **Use Case**: Provision cloud resources predictably across staging and production without clicking through AWS consoles.
- **Skill Implementation**: Execute simple IaC scripts to spin up required managed databases, buckets, and serverless functions dynamically.
