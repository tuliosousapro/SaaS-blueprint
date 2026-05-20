# Automations, Skills, and Tools: Analytics Phase

Stop tracking noise. Expose exactly what drives behavior.

## 1. Dashboard Generative Scripts
- **Tool**: Metabase / Supabase Chart components
- **Use Case**: Automatically generate SQL-backed visualization dashboards tracking Core Action metrics out-of-the-box.
- **Skill Implementation**: An AI prompt that takes your database schema and outputs pre-structured SQL queries to identify Daily Active Users (DAU), retention cohorts, and conversion funnels.

## 2. User Journey Tracking Scripts
- **Tool**: PostHog / Mixpanel auto-capture
- **Use Case**: Automatically tag every interaction on the client-side without littering your codebase with `track()` calls.
- **Skill Implementation**: A quick script plugin that injects and configures privacy-compliant auto-capture tracking dynamically across your Next.js/React router.
