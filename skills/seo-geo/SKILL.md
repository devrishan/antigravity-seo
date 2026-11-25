---
name: seo-geo
description: >-
  Audit and optimize content for Google AI Overviews, AI Mode, ChatGPT Search,
  Perplexity, and Gemini citations (Generative Engine Optimization / GEO). Use
  when improving AI search visibility, citability, brand signals, and passage
  structure.
---

# AI Search & Generative Engine Optimization (GEO)

From Google Search's official guidance: optimizing for generative AI search is **still SEO** — grounded in entity clarity, crawlability, E-E-A-T, and clear passage structure.

## Core GEO Audit Criteria

1. **Citability & Answer-First Structure (25%)**
   - Front-load a clear, self-contained answer or definition ("X is...") in the first 40–60 words of key sections.
   - Include specific, verifiable facts, numbers, and attributed claims.
   - Avoid vague marketing fluff and buried conclusions.

2. **Structural Readability (20%)**
   - Clean `H1 → H2 → H3` hierarchy.
   - Short paragraphs (2–4 sentences), comparison tables, ordered/unordered lists, and explicit Q&A sections.

3. **Entity & Brand Signals (25%)**
   - Brand mentions across authoritative third-party surfaces (YouTube, Reddit, GitHub, LinkedIn, Wikipedia) correlate ~3x more strongly with AI citations than raw Domain Rating.
   - Pair with `seo-entity` to eliminate namesake ambiguity.

4. **Server-Rendered Accessibility & AI Crawlers (30%)**
   - Primary content must be present in initial SSR HTML (not hidden behind client-only JS).
   - Check `robots.txt` for `GPTBot`, `ChatGPT-User`, `PerplexityBot`, `ClaudeBot`, `Google-Extended`.
   - Maintain an accurate, dead-link-free `/llms.txt` and `/llms-full.txt`.
