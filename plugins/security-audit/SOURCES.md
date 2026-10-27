# Sources

Skills copied unmodified from catalog/skills-catalog.zip (see catalog/index.csv). Level: candidate, NOT tested or run by us.
Licenses: see ../../catalog/LICENSES.md.

| Skill | Resource | What it does | Risk flags found by pattern scan (not a review) |
|---|---|---|---|
| security-review | ecc | Use this skill when adding authentication, handling user input, working with secrets, creating API endpoints, or implementing payment/sen... | api key, api_key, apikey, npm i |
| security-reviewer | jeffallan-claude-skills | Identifies security vulnerabilities, generates structured audit reports with severity ratings, and provides actionable remediation guidance. | .py, allowed-tools, mcp |
| secure-code-guardian | jeffallan-claude-skills | Use when implementing authentication/authorization, securing user input, or preventing OWASP Top 10 vulnerabilities — including custom se... | curl |
| audit-context-building | trail-of-bits-skills | Understand a codebase before looking for bugs in it - what each function assumes, what it guarantees, and what it depends on elsewhere. | allowed-tools |
| variant-analysis | trail-of-bits-skills | Hunts for the other instances of a bug already found — the variants of one root cause across a codebase. | none |
| sharp-edges | trail-of-bits-skills | Identifies error-prone APIs, dangerous configurations, and footgun designs that enable security mistakes. | allowed-tools |
| supply-chain-risk-auditor | trail-of-bits-skills | Audits a project's dependencies for supply-chain risk: version-matched advisories for direct dependencies and the full lockfile tree, aba... | .py, allowed-tools |
