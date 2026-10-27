# Third-party licenses

Status of every resource in `catalog/skills-catalog.zip`, checked 2026-10-27 via the GitHub license API (repo-level only; a repo license does not prove every file inside is covered). This is not legal advice. The repository is public, so verify before relying on it.

| Resource | Skills in zip | Upstream license | Notes |
|---|---|---|---|
| ecc | 313 | MIT, (c) 2026 Affaan Mustafa (affaan-m/ECC) | Used in research-synthesis, design, presentations. Keep the copyright notice. |
| matt-pocock-skills | 38 | MIT, (c) 2026 Matt Pocock (mattpocock/skills) | Used in software-dev, research-synthesis, presentations. |
| gstack | 64 | MIT (garrytan/gstack) | |
| jeffallan-claude-skills | 67 | MIT (jeffallan/claude-skills) | |
| superpowers | 15 | MIT (obra/superpowers) | |
| superpowers-lab | 4 | MIT (obra/superpowers-lab) | |
| planning-with-files | 6 | MIT (OthmanAdi/planning-with-files) | |
| impeccable | 2 | Apache-2.0 (pbakaus/impeccable) | Needs license text and notices if redistributed. |
| taste-skill | 1 | MIT (Leonxlnx/taste-skill) | |
| agent-security-skill | 1 | MIT (olanokhin/agent-security-skill) | |
| trail-of-bits-skills | 97 | CC-BY-SA-4.0 (trailofbits/skills) | Share-alike + attribution. Redistribution in a public repo needs attribution and the same license for adaptations. |
| anthropic-skills-official | 16 | Example skills Apache-2.0 per registry; document skills (docx/pdf/pptx/xlsx) are source-available and NOT in the zip (verified) | Confirm per skill. |
| vercel-agent-skills | 9 | NONE DETECTED (vercel-labs/agent-skills has no license) | No license = all rights reserved by default. Only `writing-guidelines` (a 1 KB wrapper) is used in a plugin. The rules it applies come from vercel-labs/writing-guidelines (MIT, (c) 2026 Vercel Labs; license copy kept in the plugin). |
| api-discipline | 1 | NOASSERTION | License unclear. |
| security-audit-netresearch | 1 | NOASSERTION | License unclear. |
| mongodb-agent-skills | 7 | not checked | |
| planetscale-database-skills | 4 | not checked | |
| karpathy-guidelines | 1 | not found via API | |
| socratic-tutors | 1 | MIT (RoundTable02/socrates-skill) | |

## Open risks for the public repo

1. `vercel-agent-skills` (9 skills, no license), `api-discipline` and `security-audit-netresearch` (unclear), `mongodb`, `planetscale`, `karpathy` (unchecked) are redistributed in the zip without a confirmed license.
2. `trail-of-bits-skills` is CC-BY-SA-4.0: attribution and share-alike apply to the zip.
3. MIT/Apache sources need their notices kept; per-plugin notices are in each `SOURCES.md`.

Options (the owner decides): make the repo private, or remove the unlicensed/unchecked collections from the zip, or keep only the four plugins plus the index (the zip is a reference store, not needed to install the plugins).