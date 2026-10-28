# Sources

Skills copied unmodified from catalog/skills-catalog.zip (see catalog/index.csv). Level: candidate, NOT tested or run by us.
Licenses: see ../../catalog/LICENSES.md.

| Skill | Resource | What it does | Risk flags found by pattern scan (not a review) |
|---|---|---|---|
| planning-with-files | planning-with-files | Persistent file-based planning for multi-step AI-agent work. | .py, .sh, allowed-tools |
| writing-plans | superpowers | Use when you have a spec or requirements for a multi-step task, before touching code | .py |
| executing-plans | superpowers | Use when executing an implementation plan in the current session as the implementer yourself — your human partner chose inline execution,... | none |
| brainstorming | superpowers | You MUST use this before any creative work - creating features, building components, adding functionality, modifying behavior, or plannin... | none |
| grill-me | matt-pocock-skills | A relentless interview to sharpen a plan or design. | disable-model-invocation |
| to-spec | matt-pocock-skills | Turn the current conversation into a spec and publish it to the project issue tracker: no interview, just synthesis of what you've alread... | disable-model-invocation |
| to-tickets | matt-pocock-skills | Break a plan, spec, or the current conversation into a set of tracer-bullet tickets, each declaring its blocking edges, published to the ... | disable-model-invocation |
| handoff | matt-pocock-skills | Compact the current conversation into a handoff document for another agent to pick up. | api key, disable-model-invocation |
| subagent-driven-development | superpowers | Use when executing implementation plans with independent tasks in the current session | none |
| dispatching-parallel-agents | superpowers | Use when facing 2+ independent tasks that can be worked on without shared state or sequential dependencies | none |
| triage | matt-pocock-skills | Move issues and external PRs through a state machine of triage roles, categorise, verify, grill if needed, and write agent-ready briefs. | disable-model-invocation |
| wayfinder | matt-pocock-skills | Plan a huge chunk of work (more than one agent session can hold) as a shared map of decision tickets on your issue tracker, and resolve t... | disable-model-invocation |
| grilling | matt-pocock-skills | Grill the user relentlessly about a plan, decision, or idea. | none |
| grill-with-docs | matt-pocock-skills | A relentless interview to sharpen a plan or design, which also creates docs (ADR's and glossary) as we go. | disable-model-invocation |
| using-git-worktrees | superpowers | Use when starting feature work that needs isolation from current workspace or before executing implementation plans - ensures an isolated... | npm i, pip install |
| context-budget | ecc | Routes live context checks to the native Codex or Claude Code meter without scanning files, and performs a bounded static component audit... | mcp |
| context-save | gstack | Save working context. | allowed-tools, mcp |
| context-restore | gstack | Restore working context saved earlier by /context-save. | allowed-tools, mcp |
| strategic-compact | ecc | Suggests manual context compaction at logical intervals to preserve context through task phases rather than arbitrary auto-compaction. | .sh, mcp |
| plan-eng-review | gstack | Eng manager-mode plan review. | .sh, allowed-tools, mcp |
| plan-ceo-review | gstack | CEO/founder-mode plan review. | .sh, allowed-tools, mcp |
| plan-design-review | gstack | Designer's eye plan review — interactive, like CEO and Eng review. | allowed-tools, api key, curl, mcp, rm -rf |
| blueprint | ecc | Turn a one-line objective into a step-by-step construction plan for multi-session, multi-agent engineering projects: one-PR-sized steps w... | none |
| council | ecc | Convene a four-voice council for ambiguous decisions, tradeoffs, and go/no-go calls. | none |
| search-first | ecc | Research-before-coding workflow: search npm/PyPI, MCP servers, skills, and GitHub for existing tools before writing custom code, then ado... | mcp, npm i |
| verification-loop | ecc | Run a six-phase verification of a Claude Code session's work — build, type check, lint, tests with coverage, security grep, and diff re... | api_key, npx |
| skill-creator | anthropic-skills-official | Create new skills, modify and improve existing skills, and measure skill performance. | .py, mcp |
| writing-skills | superpowers | Use when creating new skills, editing existing skills, or verifying skills work before deployment | .py, .sh |
| prototype | matt-pocock-skills | Build a throwaway prototype to answer a design question. | none |
| to-questionnaire | matt-pocock-skills | Turn a decision you can't fully answer into a questionnaire for someone else to fill in. | disable-model-invocation |
| agentic-engineering | ecc | Operate as an agentic engineer using eval-first execution, decomposition, and cost-aware model routing. | none |
| wizard | matt-pocock-skills | Generate an interactive bash wizard that walks a human through steps only they can perform. | .sh, api key |
