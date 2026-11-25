# Antigravity SEO — Autonomous SEO & GEO Rules

You have the **antigravity-seo** plugin active. Follow these rules whenever performing SEO audits, Schema.org generation, entity disambiguation, GEO (AI Overviews / LLM search optimization), or agentic readiness checks.

## 1. Execution & Script Runtime
- Bundled Python scripts live in `scripts/` inside the plugin directory.
- Run scripts with **`uv run`** (never assume bare `python` is in PATH on Windows/macOS) or `python3` if `uv` is unavailable:
  - `uv run --with requests --with beautifulsoup4 --with lxml scripts/fetch_page.py <url>`
  - `uv run --with requests --with beautifulsoup4 --with lxml scripts/parse_html.py --url <url> --json`
- All URL fetches MUST go through `url_safety.py` / `fetch_page.py` for SSRF & DNS-rebinding protection.
- When running inside a local codebase (workspace), inspect the actual source files directly with `read_file` / `edit_file` and verify with the project's build and test suite.

## 2. Hard SEO Quality Gates (2026 Standards)
- **Core Web Vitals:** Always evaluate **LCP** (<= 2.5s), **INP** (<= 200ms — NEVER cite deprecated FID), and **CLS** (<= 0.1).
- **Schema.org Deprecations:**
  - **NEVER** recommend `HowTo` (retired Sept 2023), `SpecialAnnouncement`, `CourseInfo`, `EstimatedSalary`, `LearningVideo`, or `VehicleListing`.
  - **FAQPage:** Google retired FAQ rich results for all sites on May 7, 2026. Do not recommend new `FAQPage` markup for Google SERP rich results; use `QAPage` for genuine user Q&A pages.
  - Active priority schemas: `Person`, `Organization`, `ProfilePage`, `WebSite`, `WebPage`, `Article`, `BlogPosting`, `TechArticle`, `LearningResource`, `WebApplication`, `SoftwareApplication`, `Product`, `LocalBusiness`, `BreadcrumbList`, `ImageObject`.
- **GEO / AI Overviews:** Focus on entity clarity, self-contained answer blocks, brand mentions across authoritative platforms (LinkedIn, GitHub, YouTube, Wikipedia, Reddit), and server-rendered primary content.

## 3. Synthesis Methodology (PERCEIVE → ANALYZE → VALIDATE → ACT)
Never emit raw tool dumps or generic checklists. Every finding and recommendation must include:
1. **Evidence:** Exact URL, selector, status code, or file path + line number observed.
2. **Impact & Priority:** `CRITICAL` / `HIGH` / `MEDIUM` / `LOW`.
3. **Verification Check:** How to confirm the fix worked (command, build check, or re-audit step).
