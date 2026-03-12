# Security Policy - SaaS Command Center

This repository is a **Blueprint/Operating System** for building SaaS products. Because it involves playbooks for infrastructure, authentication, and payments, security is our top priority.

## 🛡️ The "No-Leak" Rule

This repository contains many `.env` templates and configuration playbooks.
**NEVER commit your actual secrets (API Keys, Database URLs, Stripe Keys) to your fork or this repo.**

- Use the provided `.env` placeholders.
- Ensure your `.gitignore` is always active.
- If you accidentally commit a secret, rotate it **immediately**.

## Supported Versions

We support the current main version of the blueprint.

| Version | Supported          |
| ------- | ------------------ |
| 1.0.x   | ✅ Active          |
| < 1.0   | ❌ End of Life     |

## Reporting a Vulnerability

If you discover a security vulnerability within the playbooks, logic, or structure of this blueprint, please do not open a public issue.

### How to report

1. **Email:** Send a detailed report to [support@tuliosousa.pro](mailto:[support@tuliosousa.pro]).
2. **X / Twitter:** DM [@tuliosousapro](https://x.com/tuliosousapro) for urgent coordination.

### What to include

- A description of the vulnerability.
- Steps to reproduce (if applicable).
- Potential impact on founders using this blueprint.

### Our Response

- We will acknowledge your report within **24-48 hours**.
- We will provide a timeline for a fix/update.
- You will be credited in our `CHANGELOG.md` (unless you wish to remain anonymous).

## AI Safety & Vibe Coding

Since this blueprint is designed for AI-assisted development:

- Always review AI-generated code for security anti-patterns (e.g., hardcoded keys, SQL injection).
- The playbooks include security checks; do not skip the **Infrastructure → Security** phase.
