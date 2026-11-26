---
name: seo-content
description: >-
  Audit content quality and E-E-A-T (Experience, Expertise, Authoritativeness,
  Trustworthiness) signals, thin content thresholds, author attribution, and
  originality.
---

# Content Quality & E-E-A-T Audit

Run `uv run --with beautifulsoup4 --with lxml scripts/content_quality.py --url <url> --json` and check recent Google updates via `uv run scripts/seo_updates.py --since 2025-01 --limit 0 --json`.

## E-E-A-T Evaluation (2026)
- **Experience:** First-hand bench photos, real telemetry, original experiments, case-study outcomes, dates.
- **Expertise:** Author bio, credentials, technical depth, accurate derivations/code, citations to primary sources.
- **Authoritativeness:** Linked `Person`/`Organization` schema, `rel="me"` social profiles, external mentions.
- **Trustworthiness:** Clear contact info, privacy/terms where applicable, HTTPS, accurate claims with no fabricated metrics.

See `../seo/references/eeat-framework.md` and `../seo/references/quality-gates.md`.
