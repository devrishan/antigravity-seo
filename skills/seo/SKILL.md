---
name: seo
description: >-
  Comprehensive SEO, GEO (AI Overviews), Entity Disambiguation, Schema.org,
  E-E-A-T, Core Web Vitals, and Agentic Readiness orchestrator for Google
  Antigravity. Use when auditing a website or local web codebase, fixing search
  rankings, resolving Knowledge Graph entity ambiguity, validating JSON-LD, or
  optimizing for AI search citations.
---

# Antigravity SEO — Universal SEO & GEO Orchestrator

This skill turns Google Antigravity into an autonomous technical SEO, GEO (Generative Engine Optimization), and entity-disambiguation engineer. Unlike read-only audit tools, it can **both** audit live URLs and directly patch your local codebase (React, Next.js, TanStack Start, Astro, WordPress, static HTML), then verify builds and tests.

## Quick Command Routing

| Intent / Command | Skill to Load | Focus |
|---|---|---|
| Full site audit | `seo-audit` | Parallel multi-domain audit + prioritized action plan |
| Single page deep-dive | `seo-page` | On-page HTML, headings, meta, internal links, CWV |
| Entity / Knowledge Graph / Namesake fix | `seo-entity` | `Person`/`Organization`/`ProfilePage`, `sameAs`, `rel="me"`, `disambiguatingDescription`, `llms.txt` |
| AI Overviews / ChatGPT / Perplexity | `seo-geo` | Citability, brand mentions, answer-block structure |
| Schema.org JSON-LD | `seo-schema` | Detection, validation, generation (2026 active types) |
| Technical SEO | `seo-technical` | Crawlability, indexability, security headers, INP/LCP/CLS |
| Content & E-E-A-T | `seo-content` | Experience, Expertise, Authoritativeness, Trustworthiness |
| Agentic readiness | `seo-agentic` | `llms.txt`, `robots.txt` AI groups, `Content-Signal`, WebMCP |
| XML Sitemaps | `seo-sitemap` | Sitemap discovery, canonical parity, News `<news:news>` limits, image sitemaps |
| Images | `seo-images` | Alt text, dimensions, WebP/AVIF, LCP preload |
| Baseline & Drift | `seo-drift` | SQLite snapshots & regression comparison |
| Bing Webmaster & IndexNow | `seo-bing` | Bing indexation, Microsoft Copilot citations, IndexNow submission |
| Google Search APIs | `seo-google` | GSC Analytics, URL Inspection, CrUX history, Indexing API, GA4, NLP |
| Backlink Profile | `seo-backlinks` | Moz, Bing, Keywords Everywhere, Common Crawl, verification crawler |
| Strategic SEO Roadmap | `seo-plan` | Site-type strategy, content pillars, KPI targets |
| Programmatic SEO | `seo-programmatic` | Template uniqueness gates, index bloat, metadata template risk |
| Competitor Comparison Pages | `seo-competitor-pages` | `[Brand] vs [Competitor]` and `Alternatives` conversion pages |
| Keyword Clustering | `seo-cluster` | SERP-overlap clustering and hub-and-spoke internal linking |
| Content Briefs | `seo-content-brief` | Search-intent briefs, outline structure, page-type templates |
| Local SEO | `seo-local` | Local pack, GBP optimization, NAP citations, local landing pages |
| Google Maps & Geo-Grids | `seo-maps` | Local Finder rankings, service-area grids, Maps visibility |
| International / Hreflang | `seo-hreflang` | Reciprocal `hreflang`, `x-default`, ccTLD/subfolder strategy |
| Search Experience (SXO) | `seo-sxo` | Backwards SERP classification, persona scoring, IST/SOLL wireframes |
| E-commerce & UCP | `seo-ecommerce` | Product SEO, Shopping/Merchant feeds, `/.well-known/ucp` verification |
| FLOW Prompt Framework | `seo-flow` | Find · Leverage · Optimize · Win 41-prompt workflow (`sync_flow.py`) |

## Running Bundled Scripts

Use `uv run` from the plugin root directory so no global Python environment is polluted:

```bash
# SSRF-safe HTML fetch & parse
uv run --with requests --with beautifulsoup4 --with lxml scripts/fetch_page.py https://example.com
uv run --with requests --with beautifulsoup4 --with lxml scripts/parse_html.py --url https://example.com --json

# PageSpeed / Core Web Vitals (LCP, INP, CLS)
uv run --with requests scripts/pagespeed_check.py https://example.com --json

# Agentic readiness (robots.txt, llms.txt, /.well-known, WebMCP)
uv run --with requests --with beautifulsoup4 --with lxml scripts/agentic_check.py https://example.com --json

# Generate Schema.org JSON-LD
uv run scripts/schema_generate.py --type Person --json
```

## Synthesis Methodology (PERCEIVE → ANALYZE → VALIDATE → ACT)

See `references/thinking-framework.md` and `references/thinking-framework-validate-act.md`.
Every audit report must:
1. Detect the site type (Portfolio/Personal Brand, SaaS, E-commerce, Local Service, Publisher, Agency).
2. Walk **PERCEIVE → ANALYZE → VALIDATE → ACT** before bucketing into `Critical / High / Medium / Low`.
3. Include **Evidence**, **Root Cause**, **Concrete Code/Config Fix**, and **Verification Check** for every finding.
4. Respect 2026 quality gates (`references/quality-gates.md`): use **INP** (never FID), never recommend deprecated `HowTo` or `FAQPage` for Google SERP rich results.
