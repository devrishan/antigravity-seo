---
name: seo-drift
description: >-
  Capture SQLite SEO baselines and compare snapshots over time to catch
  accidental title/meta regressions, missing schemas, status-code changes, or
  CWV drops.
---

# SEO Drift Monitoring

Track SEO state across deployments:
- **Capture baseline:** `uv run scripts/drift_baseline.py <url>`
- **Compare against baseline:** `uv run scripts/drift_compare.py <url>`
- **View history:** `uv run scripts/drift_history.py <url>`

See `references/comparison-rules.md` for severity thresholds on title/canonical/robots/schema mutations.
