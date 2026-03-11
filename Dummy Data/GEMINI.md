# GEMINI.md - Dummy Data SaaS Command Center

## Project Overview
**Dummy Data** is an action-oriented repository designed for solo, non-technical founders using "Vibe-Coding" (AI-assisted development) to build, launch, and scale SaaS products. It serves as a modular "Operating System" for the entire startup lifecycle, from initial problem discovery to global scaling and exit strategy.

### Core Philosophy
- **Speed over Perfection:** "Speed is a feature."
- **Vibe Coding:** Leveraging AI tools (like Cursor, Gemini, etc.) to bridge technical gaps.
- **Brutal Simplicity:** Removing "nice-to-haves" and focusing exclusively on what moves the needle (ARR, retention, growth).
- **Automation First:** Automate what can be automated, delegate what must be, and code the rest with AI.

## Directory Structure
The workspace is organized into lifecycle phases, each containing specific, task-oriented subdirectories with their own `PLAYBOOK.md`.

- **Idea & Validation:** `Idea/`, `Validation/` - Market research, niche selection, and demand testing.
- **Planning & Design:** `Planning/`, `Design/` - Tech stack selection, roadmaps, and UI/UX flows.
- **Implementation:** `Development/`, `Infrastructure/`, `Testing/` - Backend, APIs, CI/CD, and bug fixing.
- **Market Entry:** `Launch/`, `Acquisition/`, `Distribution/` - Product Hunt, SEO, and landing page optimization.
- **Growth & Optimization:** `Analytics/`, `Conversion/`, `Growth/`, `Retention/` - A/B testing, viral loops, and churn reduction.
- **Monetization & Scaling:** `Revenue/`, `Scaling/` - Subscriptions, enterprise deals, and automation.

## Key Files
- **`README.md`**: The master plan and project profile.
- **`PLAYBOOK.md`**: Found in every subfolder; contains the specific objective, "Brainiac Vibe" (mindset), action steps, and AI prompts for that module.
- **`.env`**: Stores environment-specific secrets and configurations (ignored by git).

## Usage for Gemini
When assisting the user in this workspace, adhere to the following guidelines:

1. **Phase-Specific Context:** Always read the `PLAYBOOK.md` in the relevant directory before starting a task.
2. **Adopt the "Brainiac Vibe":** Use the direct, results-oriented, and high-leverage tone found in the playbooks.
3. **AI-First Implementation:** When asked for code or strategy, provide "vibe-ready" solutions that a non-technical founder can easily implement or copy-paste into an AI editor.
4. **Validation Focus:** Prioritize tasks that lead to empirical verification (tests, metrics, user feedback) as defined in the "Success Metrics" section of the playbooks.
5. **Cross-Reference:** If a task in `Development/` impacts `Revenue/`, check both playbooks to ensure architectural and strategic alignment.

## Development & Operations
As this is primarily a documentation/playbook project:
- **Updating Playbooks:** Ensure new playbooks follow the standard template: Objective, The Brainiac Vibe, Action Steps, Vibe Coding Prompts, and Success Metrics.
- **Adding New Modules:** Categorize them into the existing lifecycle phases or create a new logical phase if required.
