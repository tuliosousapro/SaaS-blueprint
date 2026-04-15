# Automations, Skills, and Tools: Scaling Phase

Remove human bottlenecks to handle infinity.

## 1. I18n Localization Scripts
- **Tool**: GitHub Actions + LLMs
- **Use Case**: Automatically translate your entire application and marketing site into 5 languages on every push.
- **Skill Implementation**: A script that reads changed `en.json` locale files and uses an LLM to automatically generate accurate, culturally-aware JSON files for Spanish, French, German, etc.

## 2. Cloud Cost Optimization Skills
- **Tool**: AWS Cost Explorer API / Infracost
- **Use Case**: Prevent "cloud shock" by dynamically alerting on database over-provisioning or orphaned instances.
- **Skill Implementation**: A weekly automated audit script that identifies unused assets or suggests reverting to cheaper serverless tiers, posting a markdown summary directly to Slack.
