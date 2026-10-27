# AI skills ecosystem

A registry, architecture, and shared standards for AI agent skills. Built to be reused across projects, not copied into each one.

## Start here

- registry/skills.yaml: inventory of candidate resources, with status and decision.
- registry/compatibility.yaml: where each platform loads skills.
- skills-library/: documentation snapshot (SKILL.md, README, LICENSE) of the candidate repos, with commit hashes in skills-library/INDEX.md. Unreviewed third-party text. Nothing in it has been installed or run.
- architecture/overview.md: how the parts fit together.
- ROADMAP.md: what is done and what is next.

## Status

Version 0.1. The registry and standards exist. Skills are not yet installed, reviewed, or tested. See ROADMAP.md.

## Using this in a project

1. Look up the task in registry/skills.yaml and pick the smallest set of skills.
2. Install them with the method listed in registry/compatibility.yaml for your platform.
3. Keep project rules in CLAUDE.md or AGENTS.md. Do not put them in a skill.

## Adding a skill

Follow shared/standards/skill-standard.md and start from shared/templates/SKILL.template.md. Add an entry to registry/skills.yaml.

## Install (Claude Code)

```n/plugin marketplace add athoskolling/Skills
/plugin install software-dev@ai-skills-ecosystem
```

Or copy skills only: `scripts/install.ps1 -Path <project>\.claude\skills -Apply` (dry-run without `-Apply`; `-Rollback` undoes).


## Install (copy skills, any tool)

Four plugins: software-dev, research-synthesis, design, presentations. Dry-run is the default; `-Apply` writes; `-Rollback` undoes.

```powershell
.\scripts\install.ps1 -List
.\scripts\install.ps1 -Plugin design -Path <project>\.claude\skills            # dry-run
.\scripts\install.ps1 -Plugin all -Path <project>\.claude\skills -Apply
.\scripts\install.ps1 -Plugin all -Path <project>\.claude\skills -Rollback -Apply
.\scripts\install.ps1 -Plugin design -Mode zip -Path <out> -Apply              # zip, e.g. for Cowork upload
```

Only Claude Code has been tested. Cowork and Codex are not verified.
