---
description: Determine the next incomplete module based on prerequisites, priority, and lifecycle order
---

# /next-step Workflow

Find out what to work on next in the BRAINIAC command center.

## Steps

1. **Scan all phases in order** (0 through 15):
   ```
   BRAINIAC/0. Idea/
   BRAINIAC/1. Validation/
   BRAINIAC/2. Planning/
   ...
   BRAINIAC/15. Scaling/
   ```

2. **For each phase**, list modules and check status:
   - Read each module's PLAYBOOK.md
   - Check if deliverables exist beyond the playbook itself
   - Check if PLAYBOOK.md is boilerplate or custom

3. **Find the first incomplete module** following this priority:
   - Phase order (0 before 1 before 2...)
   - Module order within a phase (0.1 before 0.2 before 0.3...)
   - Skip modules whose playbooks are still boilerplate (flag them for rewrite first)

4. **Check prerequisites** of the candidate module:
   - If prerequisites are incomplete → recommend completing those first
   - If prerequisites are met → recommend this module

5. **Output recommendation:**

```markdown
## Next Step

**Module:** {Phase}/{Module Name}
**Playbook status:** ✅ Ready / ⚠️ Needs rewrite first
**Prerequisites:** All met / Blocked by: {module}
**Estimated time:** {from playbook}

### Quick Start
Run `/run-playbook {Phase}/{Module}` to begin.
```

6. **If blocked**, suggest either:
   - Running the prerequisite module first
   - Using `/run-playbook` on the blocking module
   - Or using the `playbook-writer` skill to rewrite a boilerplate playbook
