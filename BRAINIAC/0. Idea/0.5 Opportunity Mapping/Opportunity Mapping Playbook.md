# PLAYBOOK: Opportunity Mapping

> **Phase:** 0. Idea | **Priority:** P0 | **Est. Time:** 2-3 hours

## Objective

Synthesize all Phase 0 outputs into a single opportunity assessment that produces a clear go/no-go decision and, if go, the strategic foundation for Phase 1 (Validation).

## Deliverables

- [ ] `OPPORTUNITY_CANVAS.md` — One-page canvas synthesizing problem, market, niche, and competitive position
- [ ] `VALIDATION_SCORECARD.md` — Quantified idea score using the idea-validator framework
- [ ] `PHASE_0_SUMMARY.md` — Executive summary of all Idea phase findings
- [ ] Decision: **GO** (proceed to Validation) or **PIVOT** (return to Problem Discovery with new hypothesis)

## Prerequisites

| Module | Status |
|--------|--------|
| [0.1 Problem Discovery](../0.1%20Problem%20Discovery/0.1%20Problem%20Discovery Playbook.md) | ⬜ Not Started |
| [0.2 Market Research](../0.2%20Market%20Research/0.2%20Market%20Research Playbook.md) | ⬜ Not Started |
| [0.3 Niche Selection](../0.3%20Niche%20Selection/0.3%20Niche%20Selection Playbook.md) | ⬜ Not Started |
| [0.4 Competitor Analysis](../0.4%20Competitor%20Analysis/0.4%20Competitor%20Analysis Playbook.md) | ⬜ Not Started |

> Requires ALL previous Idea modules complete. This is the synthesis step.

## Action Steps

### Step 1: Compile the Opportunity Canvas
**Tool/Agent:** AI synthesis
**Input:** Read all deliverables from modules 0.1-0.4:
- `0.1/PROBLEMS.md` — Selected problem + evidence
- `0.1/ICP_DRAFT.md` — Initial customer profile
- `0.2/RESEARCH.md` — Market size + trends
- `0.2/MARKET_SIZE.md` — TAM/SAM/SOM
- `0.3/NICHE_SCORECARD.md` — Niche evaluation
- `0.3/ICP_FINAL.md` — Refined ICP
- `0.3/POSITIONING.md` — Positioning statement
- `0.4/COMPARISON_MATRIX.md` — Competitive landscape
- `0.4/GAPS.md` — Strategic gaps
**Output:** `OPPORTUNITY_CANVAS.md` with this structure:

```markdown
# Opportunity Canvas: {Product Name}

## The Problem
{One paragraph: what pain, who has it, how bad}

## The Market
- TAM: ${X} | SAM: ${X} | SOM: ${X}
- Growth rate: {X%/year}
- Key tailwind: {one sentence}

## The Customer
{ICP summary: role, pain frequency, budget, buying trigger}

## The Competition
- Direct competitors: {count}
- Our edge: {one sentence from GAPS.md}
- Price positioning: {where we sit relative to market}

## The Opportunity
{One paragraph: why now, why us, what's the wedge}

## Risks
1. {Biggest risk and mitigation}
2. {Second risk and mitigation}
3. {Third risk and mitigation}
```

### Step 2: Run Idea Validation Scorecard
**Tool/Agent:** `idea-validator` skill
**Input:** All Phase 0 data
**Output:** `VALIDATION_SCORECARD.md` — the 5-dimension scoring (Problem Severity, Willingness to Pay, Market Timing, Founder-Market Fit, Execution Feasibility) with evidence and go/no-go recommendation.

Follow the exact framework in `.gemini/skills/idea-validator/SKILL.md`.

### Step 3: Make the Go/No-Go Decision
**Tool/Agent:** Decision framework
**Input:** Opportunity Canvas + Validation Scorecard
**Output:** Decision documented at the top of `PHASE_0_SUMMARY.md`:

**If score 15-25 (GO):**
```
## Decision: GO ✅
Proceeding to Phase 1 (Validation). Primary validation method: {landing page test / customer interviews / waitlist}.
Top risk to validate first: {risk}.
```

**If score 10-14 (PAUSE):**
```
## Decision: PAUSE ⚠️
Weakest dimension: {dimension}. 
Action: {specific step to de-risk before proceeding}.
```

**If score 5-9 (PIVOT):**
```
## Decision: PIVOT 🔄
Fundamental issue: {what's broken}.
Return to 0.1 Problem Discovery with hypothesis: {new direction}.
```

### Step 4: Write Phase 0 Executive Summary
**Tool/Agent:** AI synthesis
**Input:** All Phase 0 deliverables + decision
**Output:** `PHASE_0_SUMMARY.md`:
1. Decision (GO/PAUSE/PIVOT) with score
2. Problem statement (2 sentences)
3. Market opportunity (2 sentences)
4. Target customer (2 sentences)
5. Competitive position (2 sentences)
6. Next steps (what Phase 1 looks like)

## Agent Context

| Type | Resource |
|------|----------|
| **MCP Tools** | — (synthesis module, no external scraping needed) |
| **Skills** | `.gemini/skills/idea-validator/` |
| **Slash Commands** | `/phase-status Idea` (to verify all prereqs are complete) |

## Success Criteria

- [ ] Opportunity Canvas exists with all 6 sections populated
- [ ] Validation Scorecard follows the idea-validator framework exactly (5 dimensions, evidence for each)
- [ ] Go/No-Go decision is explicit and matches the scoring bands
- [ ] Phase 0 Summary is ≤ 12 sentences total
- [ ] All source deliverables from 0.1-0.4 are referenced (not fabricated)

## Cross-References

- **Depends on:** All modules in Phase 0 (0.1, 0.2, 0.3, 0.4)
- **Feeds into:** [PRD Generation](../0.6%20PRD%20Generation/PRD%20Generation%20Playbook.md) — if GO, this is the last step of Phase 0
- **Feeds into:** [Customer Interviews](../../1.%20Validation/Customer%20Interviews/Customer%20Interviews Playbook.md) — if GO, this is a parallel validation step
- **Feeds into:** [Landing Page Test](../../1.%20Validation/Landing%20Page%20Test/Landing%20Page%20Test Playbook.md) — canvas informs landing page copy
- **Pivot path:** [Problem Discovery](../0.1%20Problem%20Discovery/0.1%20Problem%20Discovery Playbook.md) — if PIVOT, return here with new hypothesis
