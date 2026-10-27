# Sources

Skills copied unmodified from `catalog/skills-catalog.zip` (see `catalog/index.csv` for commit and source path).

| Skill | Resource | Zip path | Level |
|---|---|---|---|
| implement | matt-pocock-skills | software-engineering/implement | candidate |
| tdd | matt-pocock-skills | testing-qa/tdd | candidate |
| diagnosing-bugs | matt-pocock-skills | software-engineering/diagnosing-bugs | candidate |
| code-review | matt-pocock-skills | testing-qa/code-review | candidate |

Review (2026-10-27): SKILL.md only, no scripts or dependencies. Only network mention is a user-run curl example in diagnosing-bugs. License not yet checked: verify before any redistribution.
Dropped from teams.yaml: `spec` (gstack), per the "max 4 skills" note. teams.yaml itself is unchanged and still draft.

## Local modifications

- implement: removed `disable-model-invocation: true` from the frontmatter. With it, the dev-flow command could not call the skill (found in eval case 1, 2026-10-27). Re-apply this when updating from upstream.

Licenses: see ../../catalog/LICENSES.md (checked 2026-10-27).
