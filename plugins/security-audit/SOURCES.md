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
| differential-review | trail-of-bits-skills | Performs security-focused differential review of code changes. | allowed-tools |
| fp-check | trail-of-bits-skills | Systematically verifies suspected security bugs to eliminate false positives, producing a TRUE POSITIVE or FALSE POSITIVE verdict with do... | allowed-tools, mcp |
| secure-workflow-guide | trail-of-bits-skills | Guides through Trail of Bits' 5-step secure development workflow. | none |
| vulnerability-triage-brocards | trail-of-bits-skills | >- | none |
| audit-prep-assistant | trail-of-bits-skills | Prepares codebases for security review using Trail of Bits' checklist. | none |
| agentic-actions-auditor | trail-of-bits-skills | Audits GitHub Actions workflows for security vulnerabilities in AI agent integrations including Claude Code Action, Gemini CLI, OpenAI Co... | allowed-tools |
| agent-security-hardening | ecc | Security hardening guidance for AI agent frameworks that process untrusted content, invoke tools, write workspace files, manage runtime i... | none |
| agent-security | agent-security-skill | Use when reviewing or writing LLM, RAG, MCP, tool, or agent code for OWASP-aligned security issues; triggered by "owasp my code", "owasp ... | .py, api key, mcp, npm i, pip install |
| security-scan | ecc | Scan your Claude Code configuration (.claude/ directory) for security vulnerabilities, misconfigurations, and injection risks using Agent... | api key, api_key, mcp, npm i, npx |
| repo-scan | ecc | Bootstrap pointer that installs the external repo-scan skill from a pinned, reviewable commit. | rm -rf |
| prove-patch | trail-of-bits-skills | Use when a local security patch commit needs independent scoped and three-arm proof. | .py |
| cso | gstack | Security audit: supported static findings; qualified profiles add reproduction and repair candidates. | allowed-tools |
| trailmark-finding-triage | trail-of-bits-skills | Performs graph-assisted triage of a single security finding, SARIF result, weAudit annotation, suspicious function, or report excerpt usi... | .py, allowed-tools |
