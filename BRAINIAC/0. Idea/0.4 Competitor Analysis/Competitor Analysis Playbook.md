# PLAYBOOK: Competitor Analysis

> **Phase:** 0. Idea | **Priority:** P0 | **Est. Time:** 3-5 hours

## Objective

Map the competitive landscape for your selected niche, extract pricing/feature intelligence, and identify the strategic gaps your product will exploit.

## Deliverables

- [ ] `ANALYSIS.md` — Structured teardown of 3-5 direct competitors
- [ ] `COMPARISON_MATRIX.md` — Feature and pricing comparison table
- [ ] `GAPS.md` — Identified market gaps, underserved segments, and user complaints
- [ ] Decision: Your competitive angle (documented)

## Prerequisites

| Module | Status |
|--------|--------|
| [0.1 Problem Discovery](../0.1%20Problem%20Discovery/0.1%20Problem%20Discovery Playbook.md) | ⬜ Not Started |
| [0.3 Niche Selection](../0.3%20Niche%20Selection/0.3%20Niche%20Selection Playbook.md) | ⬜ Not Started |

> Requires: Selected problem and niche to narrow competitor scope.

## Action Steps

### Step 1: Discover Competitors
**Tool/Agent:** `firecrawl_search` (MCP)
**Input:** Run parallel searches:
```
"{product_category} SaaS alternatives 2025"
"{problem_statement} software tools"
"best {category} for {ICP_audience}"
"{category} vs {category} comparison"
```
**Output:** List of 8-10 potential competitors. Categorize:
- **Direct** (3-5): Same problem, same audience, same model
- **Indirect** (2-3): Same problem, different approach
- **Aspirational** (1-2): Where you want to be in 2+ years

### Step 2: Deep Teardown — Pricing
**Tool/Agent:** `firecrawl_extract` (MCP)
**Input:** For each direct competitor:
```json
{
  "urls": ["{competitor}/pricing"],
  "prompt": "Extract all pricing tiers with names, monthly price, annual price, feature list per tier, and any free tier details",
  "schema": {
    "type": "object",
    "properties": {
      "tiers": {
        "type": "array",
        "items": {
          "type": "object",
          "properties": {
            "name": {"type": "string"},
            "price_monthly": {"type": "string"},
            "price_annual": {"type": "string"},
            "features": {"type": "array", "items": {"type": "string"}}
          }
        }
      },
      "free_tier": {"type": "boolean"},
      "enterprise": {"type": "boolean"}
    }
  }
}
```
**Output:** Pricing data for each competitor in `ANALYSIS.md`.

### Step 3: Deep Teardown — Features & Positioning
**Tool/Agent:** `firecrawl_scrape` (MCP)
**Input:** Scrape each competitor's homepage + features page in markdown format with `onlyMainContent: true`
**Output:** Extract and record:
- Headline / value proposition
- Target audience (who they talk to)
- Key features listed
- Social proof (logos, customer count, testimonials)
- Differentiator claims

### Step 4: Build Comparison Matrix
**Tool/Agent:** AI synthesis
**Input:** Data from Steps 2-3
**Output:** `COMPARISON_MATRIX.md`:

| Dimension | **{Your Product}** | Competitor A | Competitor B | Competitor C |
|-----------|-------------------|-------------|-------------|-------------|
| Pricing (starter) | TBD | $X/mo | $X/mo | $X/mo |
| Free tier | TBD | ✅/❌ | ✅/❌ | ✅/❌ |
| {Core Feature 1} | TBD | ✅/❌ | ✅/❌ | ✅/❌ |
| {Core Feature 2} | TBD | ✅/❌ | ✅/❌ | ✅/❌ |
| {Core Feature 3} | TBD | ✅/❌ | ✅/❌ | ✅/❌ |
| Target audience | {yours} | {theirs} | {theirs} | {theirs} |
| Top weakness | — | {gap} | {gap} | {gap} |

### Step 5: Gap Analysis
**Tool/Agent:** `firecrawl_search` (MCP)
**Input:** Search for user complaints:
```
"{competitor_name} review problems complaints"
"site:reddit.com {competitor_name} alternative frustrated"
"site:g2.com {competitor_name} cons"
"{competitor_name} missing feature request"
```
**Output:** `GAPS.md` with:
1. **Underserved segments** — Who are competitors ignoring?
2. **Missing features** — What do users beg for?
3. **Pricing gaps** — Room between free and enterprise?
4. **UX friction** — Where do users get stuck?
5. **Your competitive angle** — One paragraph: "We win by..."

## Agent Context

| Type | Resource |
|------|----------|
| **MCP Tools** | `firecrawl_search`, `firecrawl_scrape`, `firecrawl_extract`, `firecrawl_map` |
| **Skills** | `.gemini/skills/competitor-analysis/` |
| **Slash Commands** | `/run-playbook 0. Idea/0.4 Competitor Analysis` |

## Success Criteria

- [ ] 3+ direct competitors analyzed with real scraped data (not from memory)
- [ ] Pricing data extracted from actual pricing pages
- [ ] Comparison matrix includes your product column
- [ ] 5+ user complaints cited with source URLs
- [ ] Competitive angle documented in one paragraph

## Cross-References

- **Depends on:** [Problem Discovery](../0.1%20Problem%20Discovery/0.1%20Problem%20Discovery Playbook.md) — selected problem
- **Depends on:** [Niche Selection](../0.3%20Niche%20Selection/0.3%20Niche%20Selection Playbook.md) — niche narrows competitor scope
- **Feeds into:** [Opportunity Mapping](../0.5%20Opportunity%20Mapping/0.5%20Opportunity%20Mapping Playbook.md) — competitive landscape feeds opportunity assessment
- **Related:** [Market Research](../0.2%20Market%20Research/0.2%20Market%20Research Playbook.md) — competitor pricing validates ARPU estimates
