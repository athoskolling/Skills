# Orchestration

The dispatcher decides which skills to use for a request. It does not do the specialist work itself.

## Dispatch steps

1. Identify the deliverable (answer, document, code change, design, report, or other).
2. Ask for missing critical requirements. Ask only when the answer changes the approach.
3. Classify the task and estimate complexity: simple (one skill), medium (2 to 3 skills), complex (a workflow).
4. Select the smallest sufficient set of skills. Check registry/skills.yaml first.
5. Order dependencies. Run independent steps in parallel only where it saves time.
6. Define the shared contract (inputs, outputs, file names) before handing work to specialists.
7. Assign a reviewer for anything that will be shared or shipped.
8. Validate the result against the skill's checklist.
9. Report what was done, sources used, limitations, and open items. Do not claim a test passed unless it ran.

## Escalation rules

- Stop and ask before any destructive, external, or paid action.
- If two skills give conflicting instructions, prefer the project instruction file (CLAUDE.md), then the more specific skill, and report the conflict.
- If a skill is missing a required tool, say so. Do not fake the output.

## Composition

Workflows (workflows/) are fixed sequences. Example: research, then synthesis, then report, then presentation. Use a workflow only when the deliverable matches it. Otherwise, select skills individually.

## Cost control

- Load a skill only when its description matches the task.
- Keep main SKILL.md files short. Put long references in separate files and load them when needed.
- Prefer local tools and free sources when they are adequate.
