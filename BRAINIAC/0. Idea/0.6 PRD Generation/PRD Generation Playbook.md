# PLAYBOOK: PRD Generation (with AI)

> **Phase:** 1. Product | **Priority:** P0 | **Est. Time:** 2-4 hours

## Objective

Transform the validated opportunity from Phase 0 into a comprehensive, testable Product Requirements Document (PRD) using a multi-model AI strategy. The goal is to define the "What" and "Why" with extreme clarity before a single line of code is written.

## Deliverables

- [ ] `PRD.md` — Consolidated requirements document including screens, flows, and data needs.
- [ ] `USER_FLOWS.md` — Detailed step-by-step logic for core features.
- [ ] `DATA_SCHEMA.md` — Logical data structures and relationships.
- [ ] `EDGE_CASES.md` — List of error states and unconventional user behaviors.

## Prerequisites

| Module | Status |
| :--- | :--- |
| [0.5 Opportunity Mapping](../0.5%20Opportunity%20Mapping/Opportunity%20Mapping%20Playbook.md) | ⬜ Required |

## Action Steps

### Step 1: Brainstorm with Multiple Models
**Tool/Agent:** ChatGPT, Claude, Gemini
**Input:** Paste the `PHASE_0_SUMMARY.md` and `OPPORTUNITY_CANVAS.md` into each model.
**Prompt:** 
> "I am building {Product Name}. Based on this opportunity summary, define:
> 1. Core Screens (list name and primary function).
> 2. Critical User Flows (step-by-step).
> 3. Data Entities required.
> 4. 10 Edge Cases I haven't thought of.
> Output in structured Markdown."

### Step 2: Consolidate to Master PRD
**Tool/Agent:** Manual + AI Synthesis (Gemini)
**Input:** Outputs from all three models.
**Output:** `PRD.md`
**Action:** Identify overlapping strengths. (e.g., Claude for logic, ChatGPT for UX ideas, Gemini for edge cases). Merge them into a single, cohesive source of truth.

### Step 3: Define Screen Requirements
**Tool/Agent:** AI detailing
**Input:** The list of screens from Step 2.
**Output:** For each screen in `PRD.md`:
- **Header:** Goal of the screen.
- **UI Elements:** Buttons, inputs, displays.
- **Primary Action:** The one thing the user should do.
- **State Changes:** What happens when they click X?

### Step 4: Map the Data Logic
**Tool/Agent:** AI architecting
**Input:** Product scope.
**Output:** `DATA_SCHEMA.md`
**Action:** Define entities (e.g., User, Project, Transaction) and their relationships (1-many, many-many). Define critical fields for each.

### Step 5: Stress Test with Edge Cases
**Tool/Agent:** AI "Adversary"
**Input:** `PRD.md` + Flow list.
**Output:** `EDGE_CASES.md`
**Action:** Prompt the AI to "Find ways this flow breaks." Document mitigations (e.g., "What if the user disconnects mid-payment?").

## Agent Context

| Type | Resource |
| :--- | :--- |
| **Models** | GPT-4o, Claude 3.5 Sonnet, Gemini 1.5 Pro |
| **Templates** | `BRAINIAC/PLAYBOOK_TEMPLATE.md` |

## Success Criteria

- [ ] `PRD.md` exists and covers all core features.
- [ ] At least 5 distinct screens are defined with UI elements.
- [ ] Core happy path and at least 3 alternative paths are mapped in `USER_FLOWS.md`.
- [ ] `DATA_SCHEMA.md` includes all entities needed for the MVP.
- [ ] `EDGE_CASES.md` contains at least 15 edge cases with documented handling.

## Cross-References

- **Depends on:** [Opportunity Mapping](../../0.%20Idea/0.5%20Opportunity%20Mapping/Opportunity%20Mapping%20Playbook.md)
- **Feeds into:** [Product Roadmap](../../2.%20Planning/Product%20Roadmap/Product%20Roadmap Playbook.md)
- **Feeds into:** [Tech Stack](../../2.%20Planning/Tech%20Stack/Tech%20Stack Playbook.md)
