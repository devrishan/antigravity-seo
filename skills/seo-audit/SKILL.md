---
name: seo-audit
description: >-
  Full website SEO, GEO, and Agentic Readiness audit using parallel Antigravity
  subagents (research, browser, or workflow fan-out) plus bundled SSRF-safe
  Python scripts. Produces a scored SEO Health Report (0-100) and prioritized
  remediation plan.
---

# Full Website SEO Audit (Antigravity Parallel Orchestration)

Run a comprehensive audit across technical SEO, content/E-E-A-T, Schema.org, AI Overviews (GEO), entity disambiguation, Core Web Vitals, and agentic readiness.

## Audit Workflow

### Step 1: Reconnaissance & Site Type Detection
Run in parallel:
- `uv run --with beautifulsoup4 --with lxml --with httpx scripts/fetch_page.py <url>`
- `uv run --with beautifulsoup4 --with lxml scripts/parse_html.py --url <url> --json`
- `uv run --with httpx --with beautifulsoup4 scripts/agentic_check.py <url> --json`
- If inspecting a local repo, check `package.json`, `robots.txt`, `sitemap.xml`, `llms.txt`, and schema/head utilities.

Classify the site: **Personal/Portfolio**, **SaaS**, **E-commerce**, **Local Service**, **Publisher**, or **Agency**.

### Step 2: Parallel Specialist Delegation
Use Antigravity's `invoke_subagent` (or `run_workflow` for large multi-page crawls) to analyze these dimensions in parallel:
1. **Technical & Performance (`research` / scripts):** `transport_check.py`, `pagespeed_check.py`, `lcp_subparts.py`, `sitemap_discovery.py`.
2. **Schema & Entity (`seo-schema` + `seo-entity`):** JSON-LD `@graph` integrity, deprecated types, `Person`/`Organization`/`ProfilePage`, `rel="me"`, `sameAs`.
3. **Content & GEO (`seo-content` + `seo-geo`):** E-E-A-T signals, thin content, citability, self-contained answer blocks, AI crawler access.
4. **Live Browser QA (`browser` subagent):** Render in headless/webview browser, check console errors, dark/light contrast, mobile layout, H1 visibility, and LCP image loading.

### Step 3: Scoring & Prioritized Action Plan
Compute an **SEO Health Score (0–100)** across:
- Technical & Indexability (25%)
- Content & E-E-A-T (20%)
- Schema & Entity Clarity (20%)
- Performance / CWV (20%)
- GEO & Agentic Readiness (15%)

Present findings bucketed by **Critical → High → Medium → Low**, each with exact evidence, file/line or URL, and a concrete verification command.
