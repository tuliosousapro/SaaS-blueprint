# Automations, Skills, and Tools: Retention Phase

Make your product sticky and support proactive.

## 1. Customer Support / Helpdesk Agents
- **Tool**: Supabase MCP + Vector DB + LLM
- **Use Case**: Instantly resolve 80% of support tickets by automatically retrieving answers from your documentation and previous tickets.
- **Skill Implementation**: An AI support skill that ingests incoming emails or chats, performs semantic search over your `docs/` folder, and drafts an accurate, empathetic response for human approval.

## 2. Drip Campaign Automators
- **Tool**: Resend / Loops.so
- **Use Case**: Automatically trigger educational emails to users who haven't completed the "Aha!" moment in the first 3 days.
- **Skill Implementation**: A serverless webhook function that queries inactive accounts nightly and automatically queues them into a re-engagement sequence.
