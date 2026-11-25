---
name: seo-page
description: >-
  Deep single-page SEO audit: title/meta length, H1-H3 hierarchy, internal
  links, OpenGraph/Twitter cards, JSON-LD, LCP element, and content quality.
---

# Deep Single-Page SEO Analysis

1. Run `uv run --with beautifulsoup4 --with lxml scripts/parse_html.py --url <url> --json`.
2. Run `uv run --with beautifulsoup4 --with httpx scripts/page_checks.py <url> --json`.
3. Evaluate:
   - `<title>` (30–60 chars, unique, brand-safe) & `<meta name="description">` (120–160 chars).
   - Single `<h1>` matching page intent, logical `H2 → H3` tree.
   - Self-referencing `<link rel="canonical">` matching `og:url`.
   - `og:title`, `og:description`, `og:image` (absolute URL, >= 1200x630).
   - JSON-LD validity (`seo-schema`) and entity clarity (`seo-entity`).
   - LCP image preload (`fetchpriority="high"`) and CLS prevention (`width`/`height`).
