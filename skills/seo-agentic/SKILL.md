---
name: seo-agentic
description: >-
  Audit and fix AI agent browsing readiness: Lighthouse Agentic Browsing
  fraction, accessibility tree, robots.txt AI groups, Content-Signal, llms.txt,
  Markdown delivery, /.well-known discovery files, and WebMCP.
---

# Agentic Browsing Readiness

Agent readiness = **Accessibility + Performance + Access Policy + Discovery Layer (`llms.txt` / Markdown)**.

## Audit Steps
1. **HTTP & Markup Checks:**
   `uv run --with httpx --with beautifulsoup4 scripts/agentic_check.py <url> --json`
   Checks SSR content, `robots.txt` AI user-agent groups, `Content-Signal`, `llms.txt`, Markdown delivery (`Accept: text/markdown` + `Vary: Accept`), `/.well-known` files, and WebMCP.
2. **Accessibility Tree Heuristic:**
   `uv run --with beautifulsoup4 scripts/agent_ux_check.py <url> --json`
3. **Lighthouse Agentic Browsing (if PSI API available):**
   `uv run --with httpx scripts/lighthouse_agentic.py <url> --strategy both --json`

## Priority Matrix
- **P0:** Accessible names & valid roles, CLS <= 0.1, primary content present without JS, `robots.txt` reachable with clear AI groups, no CAPTCHA blocking content.
- **P1:** Unknown URLs return real HTTP `404` (never catch-all `200`), valid `llms.txt` with zero dead links, `Content-Signal` headers/directives.
- **P2/P3:** `/.well-known/api-catalog`, `agent-card.json`, optional WebMCP `document.modelContext` tools.
