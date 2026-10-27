#!/usr/bin/env python3
"""Reorganize skills-library/ into skills-by-type/<department>/<skill>/.

- One copy per skill name (first match in PRIORITY wins; the rest are logged).
- Excludes Anthropic document skills (docx, pdf, pptx, xlsx): source-available, not open source.
- Department is assigned by keyword rules on the skill name and its frontmatter description.
  This is heuristic. Review DEPARTMENT_RULES and the output index.
- Writes index.csv (department, platform, resource, source path, commit) and dedupe_log.csv.
"""
import csv
import os
import re
import shutil
import sys

ECO = "/home/claude/ai-skills-ecosystem"
SRC = os.path.join(ECO, "skills-library")
DST = os.path.join(ECO, "skills-by-type")

EXCLUDED_NAMES = {"docx", "pdf", "pptx", "xlsx"}

# Platform (ambient) per resource, from registry/skills.yaml and compatibility.yaml.
PLATFORM = {
    "anthropic-skills-official": "claude-code, claude-ai-chat",
    "matt-pocock-skills": "claude-code, codex",
    "superpowers": "claude-code, cursor, codex, copilot-cli, opencode",
    "superpowers-lab": "claude-code",
    "jeffallan-claude-skills": "claude-code",
    "vercel-agent-skills": "claude-code, cursor, skills.sh agents",
    "impeccable": "claude-code, cursor, windsurf",
    "taste-skill": "claude-code and others",
    "gstack": "claude-code, codex, gemini-cli, cursor",
    "planning-with-files": "claude-code, codex, cursor, and others",
    "trail-of-bits-skills": "claude-code",
    "ecc": "claude-code and others",
    "api-discipline": "claude-code",
    "agent-security-skill": "claude-code, codex, cursor, copilot, windsurf",
    "security-audit-netresearch": "claude-code, cursor, copilot",
    "socratic-tutors": "claude-code",
    "karpathy-guidelines": "claude-code, cursor",
}

# Resource priority for duplicate names (earlier = kept).
PRIORITY = [
    "anthropic-skills-official", "matt-pocock-skills", "superpowers", "superpowers-lab",
    "jeffallan-claude-skills", "vercel-agent-skills", "impeccable", "taste-skill",
    "gstack", "planning-with-files", "trail-of-bits-skills", "api-discipline",
    "agent-security-skill", "security-audit-netresearch", "socratic-tutors",
    "karpathy-guidelines", "ecc",
]

# Department rules, checked top to bottom on "name + description". First match wins.
DEPARTMENT_RULES = [
    ("security", r"secur|owasp|audit|vulnerab|threat|pentest|fuzz|sanitizer|codeql|semgrep|sarif|"
                 r"\bcve\b|crypto|constant-time|zeroize|exploit|bounty|supply-chain|wycheproof|"
                 r"sharp-edges|\bphi\b|hipaa|compliance|defi|solana|\bton\b|algorand|substrate|"
                 r"cosmos|cairo|yara|firebase-apk|variant-analysis|regression-hunt|reproduce-bug"),
    ("learning", r"learn|teach|tutor|socratic|explain|course|lesson|study|flashcard|onboard|"
                 r"scaffold|education|academy|discern|guided|bengali"),
    ("documents-office", r"spreadsheet|office|word-doc|excel|powerpoint|\bsheet"),
    ("orchestration", r"orchestr|agent|harness|loop|\bplan|workflow|dispatch|council|team|parallel|"
                      r"delegat|skill|memory|context|handoff|dmux|continuous|autonomous|router|"
                      r"ask-matt|wayfinder|triage|to-spec|to-tickets|to-questionnaire|grill|"
                      r"interview|retro|hook|gateguard|brainstorm|subagent|worktree|wizard|"
                      r"research|prototype|writing-for-agents"),
    ("apis", r"\bapi\b|api-|openapi|graphql|grpc|rest\b|webhook|connector|swagger|mcp"),
    ("testing-qa", r"test|tdd|\bqa\b|e2e|verif|regression|mutation|coverage|playwright|"
                   r"browser-qa|review|lint|quality|canary|checklist|validate|benchmark"),
    ("frontend", r"react|vue|angular|nextjs|next\.js|nuxt|svelte|frontend|front-end|css|tailwind|"
                 r"\bui\b|\bux\b|a11y|accessib|motion|animation|shadcn|swiftui|liquid-glass|"
                 r"web-design|composition|view-transition|landing|flutter|design-system|"
                 r"design-review|design-html|design-consultation|design-shotgun|frontend-slides"),
    ("data-ai", r"\bdata|scrap|\bml\b|\bllm|prompt|\brag\b|embedding|vector|pytorch|fine-tun|"
                r"model|scientific|pandas|spark|recsys|trading|prediction|inference|nlp|"
                r"pubmed|uspto|\bito-|token|eval|analytics|dashboard"),
    ("devops-infrastructure", r"docker|kubernetes|k8s|terraform|devops|deploy|cloud|homelab|network|"
                              r"cisco|bgp|vlan|wireguard|pihole|uncloud|\bsre\b|monitor|observab|"
                              r"incident|flox|terminal|ship\b|land-and-deploy|setup-deploy|"
                              r"canary-watch|config-gc|ios-clean|bun-runtime"),
    ("writing-content", r"doc|writing|article|content|copy|brand|voice|blog|press|letter|cover|resume|"
                        r"\bcv\b|essay|memo|readme|changelog|coauthor|internal-comms|translat|"
                        r"localiz|i18n|seo|marketing|campaign|social|email|newsletter|crosspost|"
                        r"investor|publisher|story|beats|fragments|shape"),
    ("business-operations", r"business|billing|invoice|finance|payroll|tax|contract|legal|agreement|"
                            r"crm|sales|lead|procure|energy|logistics|inventory|returns|customs|"
                            r"carrier|counterparty|hiring|job|recruit|market|competitive|growth|"
                            r"pricing|grant|rfp|\bops\b|master-agreement|customer|reactivate"),
    ("design-media", r"design|figma|canva|visual|graphic|poster|slide|presentation|image|\bart\b|"
                     r"canvas|icon|logo|video|manim|blender|render|game|unity|godot|remotion|"
                     r"taste|impeccable|audio|sound|gif|motion-"),
    ("software-engineering", r"python|golang|\bgo\b|rust|kotlin|java|dotnet|csharp|c#|php|perl|"
                             r"cpp|c\+\+|typescript|javascript|swift|dart|django|rails|laravel|"
                             r"spring|fastapi|nestjs|express|flask|quarkus|backend|postgres|mysql|"
                             r"redis|prisma|jpa|mybatis|clickhouse|database|\bsql\b|migrat|"
                             r"microservice|hexagonal|clean-architecture|architecture|domain|"
                             r"code|refactor|debug|diagnos|git|commit|pr\b|implement|spec|"
                             r"legacy|modern|wordpress|shopify|salesforce|embedded|android|ios|"
                             r"compose|tinystruct|websocket|typed|strict"),
]
DEFAULT_DEPT = "general"


def frontmatter_description(path):
    """Return the single-line description from YAML frontmatter, or ''."""
    try:
        with open(path, encoding="utf-8", errors="replace") as f:
            head = f.readlines()[:40]
    except OSError:
        return ""
    for line in head:
        if line.lower().startswith("description:"):
            return line.split(":", 1)[1].strip().strip('"')
    return ""


def classify(name, desc):
    """Name first (precise); description only as a fallback (broad)."""
    name = name.lower()
    for dept, pattern in DEPARTMENT_RULES:
        if re.search(pattern, name):
            return dept
    desc = desc.lower()
    for dept, pattern in DEPARTMENT_RULES:
        if re.search(pattern, desc):
            return dept
    return DEFAULT_DEPT


def read_commit(resource_dir):
    p = os.path.join(resource_dir, "SOURCE.txt")
    if os.path.exists(p):
        with open(p, encoding="utf-8") as f:
            parts = f.read().split()
            if parts:
                return parts[0][:7]
    return ""


def main():
    if not os.path.isdir(SRC):
        sys.exit(f"missing source library: {SRC}")

    resources = sorted(
        d for d in os.listdir(SRC) if os.path.isdir(os.path.join(SRC, d))
    )
    order = {r: i for i, r in enumerate(PRIORITY)}
    resources.sort(key=lambda r: (order.get(r, len(PRIORITY)), r))

    if os.path.exists(DST):
        shutil.rmtree(DST)
    os.makedirs(DST)

    kept = {}        # name -> (resource, path)
    dropped = []     # (name, resource_dropped, resource_kept, reason)
    index_rows = []

    for res in resources:
        res_dir = os.path.join(SRC, res)
        commit = read_commit(res_dir)
        for root, _dirs, files in os.walk(res_dir):
            if "SKILL.md" not in files:
                continue
            skill_dir = root
            name = os.path.basename(skill_dir)
            rel = os.path.relpath(skill_dir, SRC)

            if name in EXCLUDED_NAMES:
                dropped.append((name, res, "", "excluded: Anthropic document skill (source-available)"))
                continue
            if name in kept:
                kept_res = kept[name][0]
                dropped.append((name, res, kept_res, "duplicate name"))
                continue

            desc = frontmatter_description(os.path.join(skill_dir, "SKILL.md"))
            dept = classify(name, desc)
            dest = os.path.join(DST, dept, name)
            os.makedirs(os.path.dirname(dest), exist_ok=True)
            shutil.copytree(skill_dir, dest)

            kept[name] = (res, rel)
            index_rows.append({
                "skill": name,
                "department": dept,
                "platform": PLATFORM.get(res, "unknown"),
                "resource": res,
                "source_path": rel,
                "commit": commit,
                "description": desc[:200],
            })

    index_rows.sort(key=lambda r: (r["department"], r["skill"]))
    with open(os.path.join(DST, "index.csv"), "w", newline="", encoding="utf-8") as f:
        w = csv.DictWriter(f, fieldnames=list(index_rows[0].keys()))
        w.writeheader()
        w.writerows(index_rows)

    with open(os.path.join(DST, "dedupe_log.csv"), "w", newline="", encoding="utf-8") as f:
        w = csv.writer(f)
        w.writerow(["skill", "dropped_resource", "kept_resource", "reason"])
        w.writerows(dropped)

    by_dept = {}
    for r in index_rows:
        by_dept[r["department"]] = by_dept.get(r["department"], 0) + 1
    print(f"kept {len(index_rows)} unique skills, dropped {len(dropped)} entries")
    for d in sorted(by_dept):
        print(f"  {d:24s} {by_dept[d]}")


if __name__ == "__main__":
    main()
