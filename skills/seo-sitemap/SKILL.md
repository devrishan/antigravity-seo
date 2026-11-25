---
name: seo-sitemap
description: >-
  Discover, validate, and audit XML sitemaps, sitemap indexes, canonical parity,
  status codes, and image sitemap coverage.
---

# XML Sitemap Analysis & Validation

Run `uv run --with httpx --with lxml scripts/sitemap_discovery.py <url> --json`.

Verify:
- Referenced in `robots.txt` (`Sitemap: https://.../sitemap.xml`).
- Every URL returns HTTP `200` (no `3xx` redirects, `404`s, or `noindex` URLs).
- `<loc>` matches each page's `<link rel="canonical">` exactly (protocol, www/non-www, trailing slash).
- `<lastmod>` uses valid W3C Datetime (`YYYY-MM-DD`) and reflects actual content changes.
- Important author/portfolio images are included via `<image:image>` where appropriate.
