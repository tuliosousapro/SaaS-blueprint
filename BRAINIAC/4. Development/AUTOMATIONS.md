# Automations, Skills, and Tools: Development Phase

Write less boilerplate and more business logic.

## 1. Scaffold / Boilerplate Generators
- **Tool**: Frontend/Backend MCP Skills (Next.js, Supabase, etc.)
- **Use Case**: Automatically generate standard CRUD operations and API routes from your database schema.
- **Skill Implementation**: Use an MCP agent with a DB schema to spit out `+page.server.ts` or `route.ts` handlers and corresponding React components.

## 2. Database Schema Migrations
- **Tool**: Supabase MCP / Prisma Studio scripts
- **Use Case**: Quickly draft, apply, and rollback database migrations directly from prompts.
- **Skill Implementation**: An AI-guided migration skill that takes a plain English request ("Add user avatars") and generates/applies the exact `ALTER TABLE` SQL or Prisma model schema.
