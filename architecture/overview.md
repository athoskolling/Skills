# Architecture overview

## Layers

1. Orchestration (departments/orchestration). A dispatcher classifies a request, picks the smallest sufficient set of skills, and orders the work. See orchestration.md.
2. Department skills (departments/<name>). Specialist skills, one per focused task.
3. Shared resources (shared/). Standards, templates, and checklists that skills reference instead of copying.
4. Registry (registry/). What exists, where it came from, its status, and where it is compatible.
5. Workflows (workflows/). Multi-skill sequences for common deliverables.
6. Evaluations (evaluations/). Test cases and pass/fail criteria.

## Separation of concepts

| Concept | What it is | Example |
|---|---|---|
| Skill | Instructions loaded on demand | a SKILL.md for TDD |
| Project instructions | Always-on rules for one repo | CLAUDE.md |
| MCP server | Tools the agent can call | a GitHub or Figma connector |
| Plugin | A bundle that installs skills, commands, or hooks | a marketplace plugin |
| Hook | Code that runs on agent events | a pre-tool check |
| Script | Executable helper | a validator |

Do not mix these. A skill should not install a hook without the user's approval.

## Design decisions

- Registry first. The inventory is built from sources before any skill is written. This prevents duplicates.
- Adopt before creating. A new skill is written only when the registry has no adequate option.
- Small skills. Each skill covers one task. Orchestration composes them.
- Shared references. Common checklists live in shared/ and are linked from skills.
- Human approval gates for installs, deletes, purchases, deployments, and external messages.

## What is implemented now

- Registry entries for 20 candidate resources, all from search results (see registry/skills.yaml). 3 are marked adopt, 17 pending.
- Compatibility notes for Claude Code and claude.ai chat (see registry/compatibility.yaml).
- Skill standard and templates (shared/standards and shared/templates).
- Orchestration design (architecture/orchestration.md) and security baseline (architecture/security.md).

Not implemented yet: skill files, installs, and evaluations. See ROADMAP.md.
