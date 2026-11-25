# Antigravity SEO (`antigravity-seo`)

**Autonomous SEO, GEO (AI Overviews), Entity Disambiguation, Schema.org, E-E-A-T, Core Web Vitals, and Agentic Readiness plugin for [Google Antigravity](https://antigravity.google).**

Adapted and re-architected for Antigravity's native plugin system (`plugin.json`, progressive-disclosure `skills/*/SKILL.md`, `rules/AGENTS.md`, `uv run` Python execution, and parallel Antigravity subagents) from [AgriciDaniel/claude-seo](https://github.com/AgriciDaniel/claude-seo) (MIT License), plus a dedicated **`seo-entity`** module for Knowledge Graph & namesake disambiguation.

---

## What's Inside

### Skills (`skills/`)
| Skill | Purpose |
|---|---|
| `seo` | Main orchestrator, routing hub, and 10-principle PERCEIVE → ANALYZE → VALIDATE → ACT methodology |
| `seo-audit` | Full-site parallel audit across technical, content, schema, CWV, GEO, and agentic readiness |
| `seo-entity` | **Entity Disambiguation & Knowledge Graph** — `Person`, `ProfilePage`, `Organization`, `sameAs`, `rel="me"`, `disambiguatingDescription`, and `llms.txt` identity headers |
| `seo-geo` | **AI Search / GEO** — Google AI Overviews, AI Mode, ChatGPT Search, Perplexity, and Gemini citability |
| `seo-schema` | Schema.org JSON-LD detection, validation, and generation (2026 active types; flags retired `FAQPage` / `HowTo`) |
| `seo-agentic` | Agentic browsing readiness (`llms.txt`, `robots.txt` AI groups, `Content-Signal`, `/.well-known`, WebMCP) |
| `seo-technical` | 9-category technical SEO audit (crawlability, indexability, security headers, **INP**/LCP/CLS, SSR) |
| `seo-content` | Content quality & E-E-A-T audit |
| `seo-page` | Deep single-page HTML, heading, canonical, and OpenGraph audit |
| `seo-sitemap` | XML sitemap discovery & canonical parity |
| `seo-images` | Image alt text, WebP/AVIF, dimensions, LCP preload |
| `seo-drift` | SQLite baseline capture & regression comparison |

### Always-On Rules (`rules/AGENTS.md`)
Enforces 2026 SEO quality gates (`INP` instead of deprecated `FID`, no retired `FAQPage`/`HowTo` rich-result recommendations, SSRF-safe `fetch_page.py`, and evidence-backed fixes).

### Bundled Scripts (`scripts/`)
Includes 22 SSRF-safe Python scripts runnable via `uv run` with zero global environment pollution (`fetch_page.py`, `parse_html.py`, `page_checks.py`, `transport_check.py`, `schema_generate.py`, `agentic_check.py`, `agent_ux_check.py`, `lighthouse_agentic.py`, `pagespeed_check.py`, `lcp_subparts.py`, `preload_check.py`, `content_quality.py`, `consistency_check.py`, `drift_*.py`, `sitemap_discovery.py`, `seo_updates.py`, `indexnow_submit.py`).

---

## Installation (Google Antigravity)

### Windows (PowerShell)
```powershell
git clone https://github.com/devrishan/antigravity-seo.git
powershell -ExecutionPolicy Bypass -File antigravity-seo\install.ps1
```

### macOS / Linux
```bash
git clone https://github.com/devrishan/antigravity-seo.git
bash antigravity-seo/install.sh
```

Or copy the repository directly into `~/.gemini/config/plugins/antigravity-seo/`.

### Prerequisites
- [uv](https://docs.astral.sh/uv/) (recommended for zero-config script execution) or Python 3.11+.

---

## Example Prompts in Antigravity
- *"Run a full SEO, GEO, and entity disambiguation audit on `https://rishankp.engineer`"*
- *"Fix Person and ProfilePage JSON-LD in this codebase so Google doesn't confuse me with namesakes"*
- *"Check `llms.txt`, `robots.txt`, and agentic browsing readiness for this site"*

---

## License & Attribution
MIT License. Built by [Rishan KP](https://rishankp.engineer) (`@devrishan`), adapting core SEO scripts, schema templates, and audit methodology from [AgriciDaniel/claude-seo](https://github.com/AgriciDaniel/claude-seo).
