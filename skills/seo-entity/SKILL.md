---
name: seo-entity
description: >-
  Entity Disambiguation & Knowledge Graph Optimization for people, founders,
  engineers, and brands — especially when Google Search or AI Overviews confuse
  multiple individuals or companies with the same name, or rank the wrong
  LinkedIn/social profile. Use when fixing namesake collisions, Knowledge Graph
  identity, Person/ProfilePage JSON-LD, IndieWeb rel="me", and llms.txt entity
  clarity.
---

# Entity Disambiguation & Knowledge Graph Optimization

When Google Search or Google AI Overviews conflate two people or brands with the same name (for example, ranking a namesake's LinkedIn slug above yours or merging multiple biographies into one AI Overview), backlinks alone are not enough. Search engines and LLMs need **unambiguous, machine-verifiable entity triangulation**.

## 1. Machine-Readable Identity Triangulation (Codebase Fixes)

### A. Canonical `Person` + `ProfilePage` JSON-LD
Ensure the homepage (`/`) and dedicated profile page (`/about`) emit a unified `@id`-linked `Person` entity:
- `@id`: `https://yourdomain.com/#person`
- `name` + `alternateName` (include middle names, handles like `@handle`, native-script spellings, and city/university qualifiers)
- `disambiguatingDescription`: Explicitly state institution, degree/role, city, and clarify distinction from unrelated entities sharing the name (without keyword stuffing).
- `sameAs`: Array of **only** verified, owned URLs (`LinkedIn`, `GitHub`, `X`, `Instagram`, `YouTube`, `ORCID`, `Google Scholar`, `Wikidata`). Never include third-party aggregator profiles or unverified namesake links.
- `affiliation` / `alumniOf` / `hasCredential` / `hasOccupation` / `homeLocation` / `workLocation` / `knowsAbout`: Anchor the entity in specific organizations and places.
- `mainEntityOfPage`: Link to `ProfilePage` (`https://yourdomain.com/about#profile`).

### B. IndieWeb `rel="me"` Verification
- Add `<link rel="me" href="..." />` in the document `<head>` for every owned social profile.
- Add `rel="me noopener noreferrer"` on visible social anchor tags (`<a>`) in the Hero, About page, CTA banner, and Footer.
- Use descriptive `aria-label` / anchor text (e.g., `"Rishan KP on LinkedIn"` rather than generic `"LinkedIn"`).

### C. `llms.txt` & `llms-full.txt` Entity Header
Place a concise, self-contained **Entity Identity & Disambiguation** blockquote in the top 150 words of `/llms.txt` stating:
- Full name, primary domain, exact LinkedIn/GitHub/Instagram URLs
- Institution, role, location
- Explicit disambiguation note distinguishing this entity from common namesake collisions.

## 2. Off-Site & Cross-Platform Authority Signals

Codebase schema is only half of Knowledge Graph consolidation. Also verify:
1. **Reciprocal Linking:** The target LinkedIn profile (`linkedin.com/in/<slug>`), GitHub profile (`github.com/<user>`), X, and Instagram bios MUST link back to the canonical website (`https://yourdomain.com`) with matching name, photo, and headline.
2. **Branded Anchor Consistency:** On LinkedIn, GitHub README, Medium/Dev.to, and guest posts, use consistent naming (`"<Full Name> — <Role> at <Institution>"`).
3. **Google Search Console & Rich Results Test:** Validate `ProfilePage` and `Person` JSON-LD after deployment and request indexing on `/` and `/about`.
4. **High-Correlation AI Citation Surfaces:** Ensure consistent entity bios on YouTube, GitHub, LinkedIn posts, and technical articles, as brand mentions across third-party platforms correlate strongly with AI Overview attribution.

## 3. Audit Checklist
When auditing a site or repo for entity clarity:
1. Inspect `src/lib/schema.js` (or JSON-LD generators) for `Person`, `ProfilePage`, `Organization`, `sameAs`, `disambiguatingDescription`.
2. Check `<head>` and footer/hero/about components for `rel="me"` links.
3. Check `/llms.txt` and `/about` for a front-loaded, self-contained entity summary (first 40–60 words).
4. Verify no broken or wrong-person URLs exist in `sameAs` or `socials`.
