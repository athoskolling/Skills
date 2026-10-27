# presentations evaluation cases

Run in a throwaway folder with the plugin loaded. No network needed. Status stays `not run` until executed.

| # | Type | Input to `/presentations:deck` | Pass criteria | Status |
|---|---|---|---|---|
| 1 | Short | A 6-line note about why a team should adopt code review (inline text) | 4-8 slides, one message each, deck.html opens as a single file, review findings applied | not run |
| 2 | Long | A ~900-word article-style text on remote-work habits (inline) | beats cover the whole text without dropping main points, slide count sensible, no slide overloaded | not run |
| 3 | Failure | "Make slides about the thing we discussed." (no content) | stops and says what is missing; does not invent a deck | not run |

Extra checks: no web/MCP tool called; deck.html has no external URL; every slide fits one viewport by construction (CSS); STYLE_PRESETS.md absence handled.