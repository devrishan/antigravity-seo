---
name: seo-technical
description: >-
  9-category Technical SEO audit: crawlability, indexability, security headers,
  URL structure, mobile readiness, Core Web Vitals (LCP, INP, CLS), SSR/JS
  rendering, and redirect chains.
---

# Technical SEO Audit (9 Categories)

Run `uv run --with httpx --with beautifulsoup4 scripts/transport_check.py <url> --json` and `uv run --with httpx scripts/pagespeed_check.py <url> --json`.

## 9 Audit Categories
1. **Crawlability:** `robots.txt` directives, crawl budget waste, orphan pages.
2. **Indexability:** `<meta name="robots">`, `X-Robots-Tag`, self-referencing canonicals, noindex leakage.
3. **Security & Transport:** HTTPS, HSTS, `X-Content-Type-Options`, `X-Frame-Options` / CSP `frame-ancestors`, redirect chains (max 1 hop).
4. **URL Architecture:** Clean lowercase slugs, no trailing-slash duplicates, parameter hygiene.
5. **Mobile & Viewport:** Responsive viewport meta, 44px touch targets, zero horizontal overflow.
6. **Core Web Vitals:** LCP <= 2.5s, **INP <= 200ms** (never FID), CLS <= 0.1.
7. **Structured Data:** Valid JSON-LD in SSR HTML (`seo-schema`).
8. **Rendering & Hydration:** Primary content and `<h1>` present in raw SSR HTML without JS execution.
9. **Sitemaps & Feeds:** XML sitemap parity, real HTTP 404s for unknown URLs.
