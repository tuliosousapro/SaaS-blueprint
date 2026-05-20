---
description: Scan all modules in a phase and report completion status based on deliverables
---

# /phase-status Workflow

Get a completion report for any BRAINIAC lifecycle phase.

## Steps

1. **Identify the phase.** The user specifies:
   - A phase name: `Idea`, `Validation`, `Planning`, etc.
   - Or a phase number: `0`, `1`, `2`, etc.

2. **List all modules** in the phase directory:
   ```
   BRAINIAC/{Phase Number}. {Phase Name}/
   ```

3. **For each module**, check:
   - Does `PLAYBOOK.md` exist? → If no, flag as "Missing Playbook"
   - Is the PLAYBOOK.md still boilerplate? → Check for generic markers: "Ship fast, validate early", "pour gasoline", "Define the MVP for {Module}"
   - Are deliverable files present? → Check for files beyond PLAYBOOK.md (e.g., RESEARCH.md, ANALYSIS.md, SCORECARD.md)
   - Are success criteria checked off?

4. **Generate status report:**

```markdown
# Phase Status: {Phase Name}

| # | Module | Playbook | Deliverables | Status |
|---|--------|----------|-------------|--------|
| 1 | {name} | ✅ Custom / ⚠️ Boilerplate / ❌ Missing | X/Y files | 🟢 Done / 🟡 In Progress / 🔴 Not Started |
| 2 | {name} | ... | ... | ... |

**Progress: X/Y modules complete (XX%)**
**Next module:** {first incomplete module name}
```

5. **Display the report** to the user.
