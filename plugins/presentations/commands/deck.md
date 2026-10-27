---
description: Turn content into a reviewed slide structure (and a single-file HTML deck)
argument-hint: <content, notes or a file path>
---

Build a slide deck from: $ARGUMENTS

Constraints: no network, no MCP, no browser automation, no external CDN. If the file STYLE_PRESETS.md that frontend-slides mentions does not exist, do not look for it: apply its own non-negotiables (one self-contained HTML file, every slide fits one viewport, no scrolling inside a slide, accessible and responsive).

1. Call the Skill tool with "writing-beats" to turn the content into a journey of beats (one idea per beat, each term grounded before it is used). If the content is empty, contradictory or too thin to build a deck, stop and say exactly what is missing instead of inventing material.
2. Call the Skill tool with "frontend-slides" to turn the beats into slides: a slide list (title, one message, content, speaker notes) and a single self-contained deck.html.
3. Call the Skill tool with "writing-guidelines" on the slide text (outline and deck.html text). Apply the findings and keep a list of what changed.
4. Finish with: file paths, slide count, the review findings fixed, assumptions made, and what you could not check (for example, rendering in a browser).