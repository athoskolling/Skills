# Sources

Skills copied from `catalog/skills-catalog.zip` (see `catalog/index.csv` for commit and source path).

| Skill | Resource | Zip path | Level |
|---|---|---|---|
| writing-beats | matt-pocock-skills | writing-content/writing-beats | candidate |
| frontend-slides | ecc | frontend/frontend-slides | candidate |
| writing-guidelines | vercel-agent-skills | writing-content/writing-guidelines | candidate |

Review (2026-10-27): SKILL.md only, no scripts.

## Local modifications

- writing-beats: removed `disable-model-invocation: true` so the /deck command can call it (same fix as software-dev implement). Re-apply when updating from upstream.
- writing-guidelines: the original fetches rules from raw.githubusercontent.com on every run (unpinned third-party text read as instructions, network = risk High). Replaced with a pinned, reviewed snapshot in `references/rules.md` (taken 2026-10-27). Re-snapshot and re-review before updating.
- frontend-slides: unchanged. It refers to `STYLE_PRESETS.md`, which is not in the catalog (only SKILL.md was archived); the /deck command covers its absence. Missing file means the preset catalog is unavailable: a known gap.

License not yet checked.