---
name: seo-images
description: >-
  Image SEO audit: descriptive alt text, explicit width/height attributes,
  modern formats (WebP/AVIF), responsive srcset, and LCP hero image preloading.
---

# Image SEO & Performance Audit

Check via `parse_html.py` and `preload_check.py`:
- Every `<img>` has meaningful `alt` text (empty `alt=""` only for decorative icons).
- Explicit `width` and `height` (or CSS `aspect-ratio`) to prevent CLS.
- Modern formats (`WebP` / `AVIF`) with responsive `srcset` and `sizes`.
- Above-the-fold LCP portrait/hero uses `fetchPriority="high"` + `<link rel="preload" as="image">`, never `loading="lazy"`.
- Descriptive filenames (e.g., `rishan-kp-portrait.webp` over `IMG_1234.jpg`) for Google Images entity association.
