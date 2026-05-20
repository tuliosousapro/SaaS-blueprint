# PLAYBOOK: Niche Selection

> **Phase:** 0. Idea | **Priority:** P0 | **Est. Time:** 2-3 hours

## Objective

Evaluate candidate niches against a scoring matrix and select the single niche where you have the highest probability of winning.

## Deliverables

- [ ] `NICHE_SCORECARD.md` — Scored comparison of 3-5 candidate niches
- [ ] `ICP_FINAL.md` — Refined Ideal Customer Profile specific to the chosen niche
- [ ] `POSITIONING.md` — One-line positioning statement and initial messaging draft
- [ ] Decision: Selected niche with documented reasoning

## Prerequisites

| Module | Status |
|--------|--------|
| [0.1 Problem Discovery](../0.1%20Problem%20Discovery/0.1%20Problem%20Discovery Playbook.md) | ⬜ Not Started |
| [0.2 Market Research](../0.2%20Market%20Research/0.2%20Market%20Research Playbook.md) | ⬜ Not Started |

> Requires: Problem clusters, ICP draft, and market size data.

## Action Steps

### Step 1: Identify Candidate Niches
**Tool/Agent:** AI analysis of Problem Discovery + Market Research outputs
**Input:** Problem clusters from `0.1/PROBLEMS.md` + market data from `0.2/RESEARCH.md`
**Output:** List 3-5 candidate niches. A niche = {specific audience} + {specific problem} + {specific context}.

Examples:
- ❌ Too broad: "SaaS founders"
- ✅ Right level: "Solo non-technical founders building their first SaaS with AI tools"
- ❌ Too narrow: "Brazilian solo founders building B2B SaaS with Cursor in Q1 2026"

### Step 2: Score Each Niche
**Tool/Agent:** AI-guided scoring framework
**Input:** Each candidate niche
**Output:** `NICHE_SCORECARD.md` with this matrix:

| Criteria | Weight | Niche A | Niche B | Niche C |
|----------|--------|---------|---------|---------|
| **Market Size** (from 0.2) | 20% | X/5 | X/5 | X/5 |
| **Problem Severity** (from 0.1) | 25% | X/5 | X/5 | X/5 |
| **Willingness to Pay** | 20% | X/5 | X/5 | X/5 |
| **Reachability** (can you find them?) | 15% | X/5 | X/5 | X/5 |
| **Founder-Market Fit** | 10% | X/5 | X/5 | X/5 |
| **Competition Density** | 10% | X/5 | X/5 | X/5 |
| **Weighted Score** | 100% | X.XX | X.XX | X.XX |

Score meanings:
- 5 = Exceptional advantage
- 4 = Strong
- 3 = Adequate
- 2 = Weak
- 1 = Dealbreaker

### Step 3: Validate Reachability
**Tool/Agent:** `firecrawl_search` (MCP)
**Input:** For each top-scoring niche:
```
"where do {niche_audience} hang out online"
"{niche_audience} communities forums"
"{niche_audience} newsletter podcast"
"site:reddit.com r/ {niche_topic}"
```
**Output:** List of 5+ channels where you can reach this audience (subreddits, Twitter accounts, newsletters, Discord servers, Slack groups). If you can't find 5, the niche fails the reachability test.

### Step 4: Refine ICP
**Tool/Agent:** AI synthesis
**Input:** Winning niche + Problem Discovery ICP draft
**Output:** `ICP_FINAL.md` with:
- **Demographics:** Role, seniority, company size, industry, geography
- **Psychographics:** Goals, fears, motivations, decision-making style
- **Behavior:** Tools they use, content they consume, communities they join
- **Buying triggers:** Events that make them search for a solution
- **Objections:** Top 3 reasons they wouldn't buy

### Step 5: Draft Positioning Statement
**Tool/Agent:** AI copywriting
**Input:** Chosen niche + ICP + selected problem
**Output:** `POSITIONING.md` with:

**Positioning formula:**
```
For {ICP} who {problem}, {product_name} is a {category} that {key_benefit}. Unlike {alternative}, we {differentiator}.
```

Plus 3 alternative taglines under 10 words each.

## Agent Context

| Type | Resource |
|------|----------|
| **MCP Tools** | `firecrawl_search` |
| **Skills** | `.gemini/skills/market-research/` |
| **Slash Commands** | — |

## Success Criteria

- [ ] 3+ candidate niches evaluated with weighted scores
- [ ] Winning niche has highest weighted score AND no criteria at 1/5
- [ ] 5+ reachability channels identified for the winning niche
- [ ] ICP_FINAL.md has all 5 sections populated (demographics, psychographics, behavior, triggers, objections)
- [ ] Positioning statement follows the formula and is under 40 words

## Cross-References

- **Depends on:** [Problem Discovery](../0.1%20Problem%20Discovery/0.1%20Problem%20Discovery Playbook.md) — problem clusters + ICP draft
- **Depends on:** [Market Research](../0.2%20Market%20Research/0.2%20Market%20Research Playbook.md) — market size data for scoring
- **Feeds into:** [Competitor Analysis](../0.4%20Competitor%20Analysis/0.4%20Competitor%20Analysis Playbook.md) — niche focus narrows competitor scope
- **Feeds into:** [Opportunity Mapping](../0.5%20Opportunity%20Mapping/0.5%20Opportunity%20Mapping Playbook.md) — niche + positioning feed the final assessment
