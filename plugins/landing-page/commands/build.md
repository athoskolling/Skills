---
description: Build a landing page from a briefing (direction, tokens, one self-contained HTML file, UI and accessibility review)
argument-hint: <briefing: product, audience, goal, tone>
---

Build a landing page for: $ARGUMENTS

Needs the skills of the `design` and `web-frontend` plugins. If a skill below is not available, say which one and stop.

Constraints: one self-contained `index.html` (inline CSS, minimal inline JS, system fonts or a font stack; no CDN, no external images, no network, no MCP). Mobile first, responsive, `lang` set, light and dark via `prefers-color-scheme`. Use real copy for the briefing, never lorem ipsum. If the briefing lacks product, audience or goal, state your assumptions in the report instead of inventing details silently.

1. Call the Skill tool with "frontend-design-direction" to turn the briefing into a direction: audience, one clear primary action, tone, visual language.
2. Call the Skill tool with "design-system" in generate mode for tokens (color, type scale, spacing, radius, shadow) and the few components the page needs. Write tokens as CSS custom properties.
3. Call the Skill tool with "frontend-design" and build `index.html`: hero with the primary action, proof or benefits, how it works, one secondary call to action, footer. Make deliberate, specific visual choices; avoid generic template looks.
4. Call the Skill tool with "web-design-guidelines" on `index.html` and fix what it finds.
5. Call the Skill tool with "accessibility" to check WCAG 2.2 AA (contrast of every text and background pair, focus states, touch targets 44px, heading order, alt text, reduced motion) and fix failures.
6. Report: file path, sections built, assumptions, review findings fixed, and what you could not check (you did not render it in a browser unless you did).