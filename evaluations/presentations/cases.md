# presentations evaluation cases

Run in a throwaway folder with the plugin loaded. No network needed. Status stays `not run` until executed.

| # | Type | Input to `/presentations:deck` | Pass criteria | Status |
|---|---|---|---|---|
| 1 | Short | A 6-line note about why a team should adopt code review (inline text) | 4-8 slides, one message each, deck.html opens as a single file, review findings applied | PASS 2026-10-27 |
| 2 | Long | A ~900-word article-style text on remote-work habits (inline) | beats cover the whole text without dropping main points, slide count sensible, no slide overloaded | PASS (weak input) 2026-10-27 |
| 3 | Failure | "Make slides about the thing we discussed." (no content) | stops and says what is missing; does not invent a deck | PASS 2026-10-27 |

Extra checks: no web/MCP tool called; deck.html has no external URL; every slide fits one viewport by construction (CSS); STYLE_PRESETS.md absence handled.
## Results (Claude Code 2.1.311, claude-sonnet-5-5, headless; tools allowed: Skill, Write, Edit, Read only)

- **Case 1 (short note): PASS.** writing-beats, frontend-slides, writing-guidelines called in order. 7 beats, 8 slides, beats.md + slides.md + deck.html. Review fixed 4 things (unspelled "PRs", choppy fragments, repeated subtitle, banned word "quick"). 0 web/MCP calls, 0 external URLs.
- **Case 2 (long text): PASS, weak input.** My test text was one paragraph repeated 9 times and cut mid-word by my own truncation; the agent noticed, used the unique content once and added nothing. 9 beats, 10 slides, review removed weasel word "many" and banned word "quick". Deviation: no separate slides.md, slide list and notes live inside deck.html. A better long-input case (real, non-repeating text) is still needed.
- **Case 3 (no content): PASS.** Stopped before any skill ran, wrote no files, said exactly what is missing (topic/main point, audience, raw material).
- **Independent HTML check (my script, not a browser):** both decks have viewport-height CSS, overflow hidden, keyboard handler, `lang` attribute, balanced `<section>` tags. This does not prove they render well; no one opened them in a browser.
- **Limits:** one run per case; the deck was never viewed in a browser; the pinned writing rules target documentation, so only part of them fit slides. Cowork: not verified.
