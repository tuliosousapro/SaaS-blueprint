# Automations, Skills, and Tools: Revenue Phase

Optimize billing, capture maximum value, and prevent involuntary churn.

## 1. Stripe Webhook Handlers
- **Tool**: Serverless Functions / MCP DB Integrations
- **Use Case**: Automatically sync robust subscription states (e.g., `trialing`, `past_due`, `active`) securely to your database without manual polling.
- **Skill Implementation**: Dedicated API routes generated from a template that catch Stripe events, verify signatures, and grant/revoke access instantly.

## 2. Dunning & Payment Recovery
- **Tool**: Stripe Billing automations / SendGrid
- **Use Case**: Recover 30% of lost revenue caused by expired credit cards automatically.
- **Skill Implementation**: Configuration scripts that set up pre-churn email alerts 3 days before expiry, and tiered retry schedules for failed payments.
