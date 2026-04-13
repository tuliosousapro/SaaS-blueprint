# PLAYBOOK: Market Research

> **Phase:** 0. Idea | **Priority:** P0 | **Est. Time:** 3-6 hours

## Objective

Size the market for your selected problem and validate that the opportunity is large enough to build a business on.

## Deliverables

- [ ] `RESEARCH.md` — Market intelligence report with TAM/SAM/SOM, trends, and key data points
- [ ] `MARKET_SIZE.md` — Bottom-up and top-down market sizing with assumptions documented
- [ ] Decision: Market is large enough to proceed (or pivot signal)

## Prerequisites

| Module | Status |
|--------|--------|
| [0.1 Problem Discovery](../0.1%20Problem%20Discovery/0.1%20Problem%20Discovery Playbook.md) | ⬜ Not Started |

> Requires: Selected problem + ICP draft from Problem Discovery.

## Action Steps

### Step 1: Top-Down Market Sizing
**Tool/Agent:** `firecrawl_search` (MCP)
**Input:** Run these searches:
```
"{industry} market size 2024 2025 report"
"{industry} SaaS total addressable market"
"{category} market forecast growth rate"
```
**Output:** TAM estimate with 3+ sources in `MARKET_SIZE.md`:
- TAM = Total addressable market (everyone who could theoretically buy)
- SAM = Serviceable addressable market (segment you can realistically reach)
- SOM = Serviceable obtainable market (what you can capture in year 1-2)

### Step 2: Bottom-Up Market Sizing
**Tool/Agent:** AI calculation + `firecrawl_search`
**Input:**
- Number of potential customers in your ICP (from Problem Discovery)
- Average revenue per customer (from competitor pricing or estimate)
- Conversion assumptions
**Output:** Bottom-up SOM calculation:
```
SOM = {ICP_population} × {reach_%} × {conversion_%} × {ARPU} × 12
```
Document all assumptions in `MARKET_SIZE.md`.

### Step 3: Trend Analysis
**Tool/Agent:** `firecrawl_search` (MCP)
**Input:**
```
"{industry} trends 2025 2026"
"{category} emerging technology disruption"
"{problem_domain} AI automation impact"
```
**Output:** In `RESEARCH.md`, categorize findings:
- **Tailwinds:** Market forces accelerating demand for your solution
- **Headwinds:** Forces that could slow adoption
- **Wildcards:** Unpredictable factors with high impact

### Step 4: Demand Signal Validation
**Tool/Agent:** `firecrawl_search` (MCP)
**Input:**
```
"{problem} solution search volume"
"{category} tool growing popularity"
"site:producthunt.com {category}"
"site:g2.com {category} reviews"
```
**Output:** Evidence that people are actively searching for / paying for solutions. Add to `RESEARCH.md` under "## Demand Signals".

### Step 5: Compile Market Intelligence Report
**Tool/Agent:** AI synthesis
**Input:** All data from Steps 1-4
**Output:** `RESEARCH.md` with sections:
1. Executive Summary (3 sentences)
2. TAM/SAM/SOM table with confidence levels
3. Bottom-up calculation with assumptions
4. Trend analysis (tailwinds/headwinds/wildcards)
5. Demand signals with evidence
6. Go/No-Go recommendation
7. Sources

## Agent Context

| Type | Resource |
|------|----------|
| **MCP Tools** | `firecrawl_search`, `firecrawl_scrape`, `firecrawl_extract` |
| **Skills** | `.gemini/skills/market-research/` |
| **Slash Commands** | `/run-playbook 0. Idea/0.2 Market Research` |

## Success Criteria

- [ ] TAM/SAM/SOM documented with at least 3 independent sources
- [ ] Bottom-up sizing includes explicit conversion and pricing assumptions
- [ ] SOM ≥ $1M ARR potential (otherwise the market may be too small)
- [ ] At least 3 demand signals identified with evidence
- [ ] Go/No-Go recommendation explicitly stated

## Cross-References

- **Depends on:** [Problem Discovery](../0.1%20Problem%20Discovery/0.1%20Problem%20Discovery Playbook.md) — selected problem + ICP
- **Feeds into:** [Niche Selection](../0.3%20Niche%20Selection/0.3%20Niche%20Selection Playbook.md) — market data informs niche scoring
- **Feeds into:** [Opportunity Mapping](../0.5%20Opportunity%20Mapping/0.5%20Opportunity%20Mapping Playbook.md) — market size feeds opportunity score
- **Related:** [Competitor Analysis](../0.4%20Competitor%20Analysis/0.4%20Competitor%20Analysis Playbook.md) — competitor pricing validates ARPU assumptions
