# PLAYBOOK: Problem Discovery

> **Phase:** 0. Idea | **Priority:** P0 | **Est. Time:** 2-4 hours

## Objective

Identify the top 3 high-friction problems that your target users face, validated by real signals from the market — not assumptions.

## Deliverables

- [ ] `PROBLEMS.md` — Ranked list of 3-5 problems with severity scores, evidence, and affected personas
- [ ] `ICP_DRAFT.md` — Initial Ideal Customer Profile (role, company size, industry, pain frequency)
- [ ] Decision: Which single problem to pursue (documented with reasoning)

## Prerequisites

> **None — this is the entry point for the entire BRAINIAC lifecycle.**

## Action Steps

### Step 1: Define Your Search Space
**Tool/Agent:** Manual + AI brainstorm
**Input:** Your domain interest, personal experience, or market hypothesis
**Output:** A list of 3-5 target audiences you could serve (e.g., "solo SaaS founders", "e-commerce operators", "freelance designers")

Write them down. Don't filter yet.

### Step 2: Mine Pain Signals from the Web
**Tool/Agent:** `firecrawl_search` (MCP)
**Input:** Run these searches for each target audience:
```
"{audience} biggest challenge 2025"
"{audience} frustrated with site:reddit.com"
"{audience} pain point software"
"{audience} wish there was a tool for"
```
**Output:** Collect 10-20 pain signal quotes with source URLs. Save raw data to `RAW_SIGNALS.md`.

### Step 3: Cluster and Rank Problems
**Tool/Agent:** AI analysis
**Input:** The raw signals collected in Step 2
**Output:** Group signals into 3-5 distinct problem clusters. For each, score:

| Problem | Frequency (1-5) | Severity (1-5) | Existing Solutions | Gap |
|---------|-----------------|-----------------|-------------------|-----|
| {problem} | {how often mentioned} | {how painful} | {what exists} | {what's missing} |

### Step 4: Draft Initial ICP
**Tool/Agent:** AI synthesis
**Input:** The highest-scoring problem cluster
**Output:** `ICP_DRAFT.md` with:
- **Role:** (e.g., "Non-technical solo founder")
- **Company stage:** (e.g., "Pre-revenue, 0-1 employees")
- **Industry:** (e.g., "SaaS, digital products")
- **Pain frequency:** (e.g., "Daily — every time they try to ship")
- **Current workaround:** (e.g., "YouTube tutorials, paid courses, hiring freelancers")
- **Budget range:** (e.g., "$0-50/mo for tools")

### Step 5: Select Primary Problem
**Tool/Agent:** Decision framework
**Input:** Ranked problem table + ICP draft
**Output:** A single paragraph in `PROBLEMS.md` under "## Selected Problem" stating:
- The problem
- Who has it
- Why existing solutions fail
- Why you (founder-market fit)

## Agent Context

| Type | Resource |
|------|----------|
| **MCP Tools** | `firecrawl_search`, `firecrawl_scrape` |
| **Skills** | `.gemini/skills/market-research/` |
| **Slash Commands** | — |

## Success Criteria

- [ ] `PROBLEMS.md` exists with 3+ problems, each scored on frequency and severity
- [ ] At least 10 real pain signals cited with source URLs (not fabricated)
- [ ] `ICP_DRAFT.md` exists with all 6 fields populated
- [ ] One primary problem is explicitly selected with documented reasoning
- [ ] Selected problem scores ≥ 4/5 on severity

## Cross-References

- **Feeds into:** [Market Research](../0.2%20Market%20Research/PLAYBOOK.md) — uses the selected problem to size the market
- **Feeds into:** [Niche Selection](../0.3%20Niche%20Selection/PLAYBOOK.md) — uses the ICP draft to evaluate niches
- **Related:** [Opportunity Mapping](../0.5%20Opportunity%20Mapping/PLAYBOOK.md) — synthesizes all Idea outputs
