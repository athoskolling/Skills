---
description: Answer a question with a cited report (research -> source check -> write-up)
argument-hint: <question>
---

Produce a sourced report for: $ARGUMENTS

1. Call the Skill tool with "research". Collect findings in a Markdown notes file, each claim with its source (URL or document).
2. Call the Skill tool with "scientific-thinking-scholar-evaluation" in targeted mode on those notes: for each key claim, is it supported by the cited source, is the source primary and reliable, are there conflicts. Mark claims that fail as "unverified" or drop them.
3. Call the Skill tool with "article-writing" to write the final report from the verified notes only. Every factual claim keeps its citation. Do not add facts that are not in the notes.
4. Finish with: the report path, the list of sources, claims dropped or marked unverified, and anything you could not check.