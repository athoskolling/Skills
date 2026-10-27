# Roadmap

## Phase status (PROMPT_MESTRE v1.4, section 13)

| Phase | State | Approved on |
|---|---|---|
| 0. Base | Done. Catalog (648 skills, `catalog/index.csv`), registry, `registry/teams.yaml` (draft, 2026-10-27) and Git repo in place. | 2026-10-27 (user: "pode continuar") |
| 1. Software dev vertical path | Done. Built; 3 cases run in Claude Code (2 pass, 1 partial). | 2026-10-27 (user: "aprovado e pode continuar") |
| 2. Cowork validation | Deferred: Cowork unavailable to the user. Zip built; install test pending (see DECISIONS, Rodada 8) | - |
| 3. Other domains | Allowed to start by user exception (DECISIONS, Rodada 8). Order: research-synthesis, design, presentations | - |

Last task (Phase 1): built plugins/software-dev (implement, tdd, diagnosing-bugs, code-review; `spec` dropped per teams.yaml note), command dev-flow, scripts/install.ps1 (dry-run default, manifest, rollback; verified in sandbox), marketplace.json. `claude plugin validate` ok.`nNext: run the 3 cases in Claude Code, record results, then ask for Phase 1 approval. Not done yet: end-to-end run, Cowork (Phase 2), Codex format.`n`nPrevious task: close Phase 0 (`teams.yaml` placeholder fixed to gstack `spec`, `git init`, first commit).
Next task: Phase 1, in a new session (one phase per session): controlled installer, plugin with 2-4 skills, one workflow, test cases, rollback.
Note: `teams.yaml` stays "draft" until explicitly approved; any later change to it needs approval.

The sections below are the earlier delivery notes, kept for history.

## Done (this delivery)

- Environment inspection (Linux, bash, Node 22, Python 3, git, gh, Claude Code CLI). No global skills were changed.
- Registry of 20 candidate resources from search results. All are "listed" (not reviewed).
- Architecture overview, orchestration design, security baseline.
- Skill standard and template.
- Compatibility notes for claude-code and claude-ai-chat.

## Next (in order)

1. Review the top 10 candidates: read each SKILL.md, README, and any scripts. Update status to "reviewed". Priority: superpowers, matt-pocock-skills, anthropic-skills-official, vercel-agent-skills, jeffallan-claude-skills, agent-security-skill, impeccable, planning-with-files, socratic-tutors, api-discipline.
2. Install two or three adopted skills into a sandbox project (not the global folder) and run representative tasks. Update status to "verified" only after the run.
3. Write evaluation cases for the orchestration dispatcher (evaluations/).
4. Write the first two workflows: research to report, and requirements to implementation to QA.
5. Create only the skills that no adopted resource covers. Candidates from the taxonomy: a Figma/design-token handoff skill, and a Brazilian Portuguese writing-style skill (if the user wants it).

## Deferred

- Departments with no current candidate (3D, game development, motion, legal, finance). Add them when a real need appears.
- Automated skill registry scripts (scripts/). Build after the registry has more than 20 reviewed entries.

## Not planned

- Installing every candidate. The inventory is a reference, not a shopping list.


## Ongoing: improve skill teams (added 2026-10-27)

Teams in `registry/teams.yaml` are a first draft built from the index only. Keep improving them after each phase:

- Run the evaluation cases per team and record which skills help, overlap or are never used. Remove or replace the weak ones.
- Revisit the dropped `spec` (gstack) skill for software-dev; decide if a 5th skill is worth it.
- Fill gaps: source-verification (research), design tokens (design). Search externally or create.
- Review catalog duplicates (`catalog/dedupe_log.csv`) when picking skills for a team.
- Check licenses before redistributing skills publicly (the repo is public).
- Every change to `teams.yaml` needs user approval (PROMPT_MESTRE 10-A).
- Work method: one commit per change, pushed to GitHub, so the history shows how the organization evolves.

- (2026-10-27) Phase 1 eval: cases 1-3 ran in Claude Code (see evaluations/software-dev/cases.md). Case 4 added and diagnosing-bugs verified once (dev-flow step 0 added). Open: check that tdd is actually used in every run; check what code-review returns.





- (2026-10-27) Phase 3, research-synthesis: plugin built, 3 cases PASS in Claude Code (evaluations/research-synthesis/cases.md). Cowork: not verified. Next domain: design (needs user approval of the team, then same process).

