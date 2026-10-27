---
description: Build a landing page from a briefing (direction, design intelligence, art direction, one HTML file, UI and accessibility review)
argument-hint: <briefing: product, audience, goal, tone>
---

Build a landing page for: $ARGUMENTS

Needs the skills of the `design` and `web-frontend` plugins. If a skill below is not available, say which one and continue without it, listing what was skipped.

Constraints: one self-contained `index.html` (inline CSS, minimal inline JS, system fonts or a font stack; no CDN, no external images, no network, no MCP). Mobile first, responsive, `lang` set, light and dark via `prefers-color-scheme`. Use real copy for the briefing, never lorem ipsum. If the briefing lacks product, audience or goal, state your assumptions in the report instead of inventing details silently.

Tool rules: scripts that ship with the skills may run only if they are local. Never run `assets.mjs` (it downloads images from the network) and never use `--persist`. The taste-skill scripts keep a small draw history in `~/.taste-skill/history.json`; that is expected, do not try to change it. Do not set environment variables in commands. If Python, Node or a browser is missing, skip that step and say so.

1. Call the Skill tool with "frontend-design-direction" to turn the briefing into a direction: audience, one clear primary action, tone, visual language.
2. Call the Skill tool with "ui-ux-pro-max" and run its `search.py --design-system` for the product type (no `--persist`) to get palette, typography pairing, style and UX rules backed by its data. Use what fits the briefing; justify what you override.
3. Call the Skill tool with "design-taste-frontend" for art direction: draw a direction with its script, follow its house style and avoid the template look it lists.
4. Call the Skill tool with "design-system" in generate mode for the final tokens (color, type scale, spacing, radius, shadow), written as CSS custom properties.
5. Call the Skill tool with "frontend-design" and build `index.html`: hero with the primary action, proof or benefits, how it works, one secondary call to action, footer.
6. Call the Skill tool with "web-design-guidelines" on `index.html` and fix what it finds. If a browser is installed and the taste-skill inspector runs locally, use it on the page and fix what it flags.
7. Call the Skill tool with "accessibility" to check WCAG 2.2 AA (contrast of every text and background pair, focus states, touch targets 44px, heading order, alt text, reduced motion) and fix failures.
8. Report: file path, sections built, assumptions, which skills and scripts ran, review findings fixed, and what you could not check (you did not render it in a browser unless you did).
