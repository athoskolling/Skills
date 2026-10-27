# Skill standard

Every skill is a folder with a SKILL.md file. Keep the main file short. Put long material in separate reference files.

## Frontmatter

```yaml
---
name: skill-name            # lowercase, hyphens, unique in the ecosystem
description: One sentence stating when to use this skill and what it does. Be specific.
---
```

The description is how the agent decides to load the skill. Vague descriptions cause skills to load for the wrong tasks.

## Body sections

1. Purpose and scope. What it does, and what it does not.
2. Inputs required.
3. Outputs expected.
4. Workflow (numbered steps).
5. Tool-selection rules.
6. Quality checklist.
7. Failure handling.
8. Security and privacy constraints.
9. Examples (good and bad usage).
10. References (authoritative sources, with links).
11. Dependencies on other skills.

## Rules

- One task per skill. Split large skills.
- Do not invent tool capabilities. Check the platform's documentation.
- Do not claim a file was created or a check passed unless it happened.
- Link to shared/ instead of copying checklists.
- Include at least three evaluation cases in evaluations/.
