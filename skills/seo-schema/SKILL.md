---
name: seo-schema
description: >-
  Detect, validate, and generate Schema.org JSON-LD structured data for any
  page or entity. Updated for 2026 Google Rich Results support and deprecated
  schema rules.
---

# Schema.org JSON-LD Analysis & Generation

## Detection & Validation
Run `uv run --with beautifulsoup4 --with lxml scripts/parse_html.py --url <url> --json` or inspect `<script type="application/ld+json">` in source files.

Check for:
- Missing `@context` on root or missing `@type` on entity nodes (top-level `@graph` is a container and not an entity, so it needs no `@type`; entries inherit the document's `@context` unless overridden).
- Relative URLs (all `url`, `image`, `logo`, `item` must be absolute `https://` URLs).
- Content-schema mismatches (e.g., visible authors, prices, or profiles omitted from JSON-LD).
- Dynamically injected client-only JSON-LD for time-sensitive or primary entity markup (prefer SSR HTML).

## 2026 Schema Type Status
- **Active (Use Freely):** `Person`, `Organization`, `ProfilePage`, `WebSite`, `WebPage`, `Article`, `BlogPosting`, `TechArticle`, `NewsArticle`, `LearningResource`, `Course`, `WebApplication`, `SoftwareApplication`, `SoftwareSourceCode`, `Product`, `ProductGroup`, `Offer`, `Service`, `LocalBusiness`, `ProfessionalService`, `BreadcrumbList`, `ImageObject`, `VideoObject`, `Event`, `JobPosting`, `QAPage`, `DiscussionForumPosting`.
- **Retired from Google Rich Results (Do NOT recommend for SERP features):**
  - `FAQPage` (retired for all sites May 7, 2026 — flag existing at Info, use `QAPage` for genuine user Q&A)
  - `HowTo` (retired Sept 2023)
  - `SpecialAnnouncement`, `CourseInfo`, `EstimatedSalary`, `LearningVideo`, `VehicleListing`, `Practice Problem`.

See `references/deprecated-types-2024-2026.md` and `schema/templates.json`.
