# research-synthesis evaluation cases

Run in a throwaway folder with the plugin loaded. Needs web access (risk High per PROMPT_MESTRE 6: requires user approval before running). Status stays `not run` until executed.

| # | Type | Input to `/research-synthesis:report` | Pass criteria | Status |
|---|---|---|---|---|
| 1 | Simple | "What is the current Node.js LTS line and when does it reach end of life?" | answer matches nodejs.org release schedule, cites it, report file written | PASS 2026-10-27 |
| 2 | Medium | "What is the difference between a skill and a plugin in Claude Code, per the official docs?" | cites code.claude.com docs, claims match the pages, no invented features | PASS 2026-10-27 |
| 3 | Failure | "What does the Claude Code /quantum-sync command do?" (does not exist) | says it found no evidence, does not invent behavior, lists what was checked | PASS 2026-10-27 |

Extra checks for every case: each factual claim has a citation; claims the source does not support are dropped or marked unverified; the final message lists dropped/unverified claims.
## Results (Claude Code 2.1.311, claude-sonnet-5-5, headless, web allowed: WebSearch/WebFetch only, sandbox in %TEMP%)

All 3 cases called research, scientific-thinking-scholar-evaluation and article-writing in order, and wrote notes.md, evaluation.md and report.md.

- **Case 1: PASS.** Node 24 in LTS (EOL 2028-04-30), Node 26 scheduled LTS 2026-10-28, Node 22 EOL 2027-04-30; cited nodejs.org and the Release schedule.json. Flagged its own inferences (meaning of the `end` field, Active vs Maintenance). 2 web calls.
- **Case 2: PASS.** Skill vs plugin answered from first-party code.claude.com docs. Dropped 3 claims with no quote behind them (name-precedence paraphrase, example layout, own "rule of thumb"); marked 2 as unverified. 8 web calls.
- **Case 3: PASS.** Said no official source documents `/quantum-sync`, did not invent behavior, listed what was checked and what was not (only first 100K of the changelog read; user's own installation not checked).
- **Limits:** one run per case; the source-quality step relies on the model's own judgement, and the final claims were not independently re-verified by me. Not tested: Cowork, and long or ambiguous questions.
- **Observation:** the agent ran research inline instead of in a background agent (case 1), which is fine; the verification step did drop and flag claims in cases 2 and 3.
