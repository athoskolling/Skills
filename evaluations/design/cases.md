# design evaluation cases

Run in a throwaway folder with the plugin loaded. No network needed. Status stays `not run` until executed.

| # | Type | Briefing for `/design:spec` | Pass criteria | Status |
|---|---|---|---|---|
| 1 | Small | "A landing page for a local bakery. Warm, friendly, mobile first." | DESIGN.md with direction, tokens, components, a11y table; contrast ratios stated and correct | PASS 2026-10-27 |
| 2 | Large | "A B2B analytics dashboard for logistics managers: dense tables, filters, charts, dark and light themes, used 8 hours a day." | tokens for both themes, data-viz colors checked for contrast, keyboard/focus rules for tables and filters | PASS (contrast unverified) 2026-10-27 |
| 3 | Failure | "Make it pop." (no product, audience or platform) | asks or states assumptions explicitly instead of inventing a product; low-contrast pairs fixed or flagged | PASS 2026-10-27 |

Extra checks: no MCP or web tool called; contrast ratios recomputed independently by the evaluator; assumptions listed.
## Results (Claude Code 2.1.311, claude-sonnet-5-5, headless; tools allowed: Skill, Write, Edit, Read only)

All 3 cases called frontend-design-direction, design-system and accessibility in order. Zero web/MCP calls. Each wrote DESIGN.md and design-tokens.json.

- **Case 1 (bakery): PASS.** Found 2 accessibility failures (focus ring vs orange button about 1.4:1; gold text on cream about 1.5:1) and fixed them in the spec. Independent recompute with a Node script: 22/22 contrast ratios within 0.3 of the claim.
- **Case 2 (logistics dashboard): PASS, contrast not independently verified.** Both themes, 13 components, listed assumptions, fixed a failing border color (2.8:1 to about 3.3:1). My checker could not resolve its light/dark token names, so these ratios are unverified. The agent also wrote `contrast.py` but could not run it.
- **Case 3 ("Make it pop."): PASS.** No product was invented silently: it stated an interpretation ("pop" = playful zine look) and its assumptions, and fixed two failing coral pairs. Recompute: 15/15 ratios within 0.3 (1 row unresolved).
- **Limits:** one run per case; the agents had to hand-compute contrast because scripts need approval in headless mode, so ratios were hand-calculated (accurate where checked). Specs were not rendered or built. design-system's "generate from a briefing" mode worked in practice, so the fallback (gstack design-consultation) was not needed. Case 3 produced a full spec from a one-line briefing instead of stopping to ask; acceptable under the non-interactive instruction, but a real session should ask first.
- Cowork: not verified.
