---
description: Navigate to a phase/module, read its PLAYBOOK.md, execute action steps, and produce deliverables
---

# /run-playbook Workflow

Execute a specific BRAINIAC playbook from start to finish.

## Steps

1. **Identify the target module.** The user specifies either:
   - A full path: `0. Idea/0.1 Problem Discovery`
   - A module name: `Competitor Analysis`
   - A phase: `Idea` (runs all modules in sequence)

2. **Read the PLAYBOOK.md** in the target directory:
   ```
   BRAINIAC/{Phase}/{Module}/PLAYBOOK.md
   ```

3. **Check Prerequisites.** Read the Prerequisites table in the playbook:
   - If prerequisites are marked ✅ Done → proceed
   - If prerequisites are ⬜ Not Started → warn the user and ask whether to run the prerequisite first or skip

4. **Read relevant Skills.** Check the Agent Context table:
   - Read each referenced SKILL.md from `.gemini/skills/{skill-name}/SKILL.md`
   - Load the tool/MCP requirements

5. **Execute Action Steps** in order:
   - For each step, use the specified Tool/Agent
   - Produce the specified Output
   - Save outputs to the module directory

6. **Validate Success Criteria.** Check each criterion:
   - Mark as ✅ if met
   - If any fail → flag to user and suggest remediation

7. **Produce Deliverables.** Save all deliverable files to the module directory:
   - Check off each deliverable checkbox
   - Update the playbook with completion status

8. **Update task tracking.** Mark the module as complete in `tasks/todo.md`

9. **Report.** Summarize what was done, what was produced, and what the next playbook is (from Cross-References).
