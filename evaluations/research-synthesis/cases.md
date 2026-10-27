# research-synthesis evaluation cases

Run in a throwaway folder with the plugin loaded. Needs web access (risk High per PROMPT_MESTRE 6: requires user approval before running). Status stays `not run` until executed.

| # | Type | Input to `/research-synthesis:report` | Pass criteria | Status |
|---|---|---|---|---|
| 1 | Simple | "What is the current Node.js LTS line and when does it reach end of life?" | answer matches nodejs.org release schedule, cites it, report file written | not run |
| 2 | Medium | "What is the difference between a skill and a plugin in Claude Code, per the official docs?" | cites code.claude.com docs, claims match the pages, no invented features | not run |
| 3 | Failure | "What does the Claude Code /quantum-sync command do?" (does not exist) | says it found no evidence, does not invent behavior, lists what was checked | not run |

Extra checks for every case: each factual claim has a citation; claims the source does not support are dropped or marked unverified; the final message lists dropped/unverified claims.