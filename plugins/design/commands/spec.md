---
description: Turn a design briefing into a design spec (direction, tokens, components, accessibility check)
argument-hint: <briefing>
---

Produce a design spec for this briefing: $ARGUMENTS

Constraints: do not use any MCP server, browser automation, paid service or network access. Work only from the briefing and your own knowledge. If there is no existing codebase, generate from the briefing; do not scan or audit code that is not there.

1. Call the Skill tool with "frontend-design-direction" to turn the briefing into a design direction (audience, tone, visual language, key decisions). Skip any step that needs an external service.
2. Call the Skill tool with "design-system" in generate mode, from that direction: design tokens (color, type, spacing, radius, shadow, breakpoints) and the core components, with the rationale for each choice. Skip the competitor research step.
3. Call the Skill tool with "accessibility" to check the spec against WCAG 2.2 AA: compute or state contrast ratios for the token pairs, focus states, touch target sizes, motion, and the semantics each component needs. Fix the spec where it fails.
4. Write the result to DESIGN.md (direction, tokens as a table plus design-tokens.json, components, accessibility check with pass/fail per item). Finish with the file paths, assumptions made because the briefing was silent, and what you could not check.