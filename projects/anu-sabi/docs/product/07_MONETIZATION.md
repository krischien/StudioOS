# Monetization — Anu-Sabi

> Economy and revenue philosophy — **current reality only**, with honest stubs.  
> **Last updated:** 2026-07-08

---

## Current status summary

| Area | Status |
|------|--------|
| In-game coins | **Live** — soft currency |
| Real-money purchases | **Not implemented** |
| Premium subscription | **Stub** — Coming Soon screen |
| Pro decks / IAP | **Stub** — promo banner only |
| Ads | **Not in repository** |

**Do not assume pricing, subscription tiers, or ad models — none exist in source.**

---

## In-game economy (live)

### Coins

**Purpose:** Gameplay resource — not real money.

| | |
|---|---|
| **Earn** | Session performance (`max(10, correct × 10)`); Daily Streak rewards |
| **Spend** | Hints (50); missed-day streak save (50) |
| **Starting balance** | 500 for new players |

**Philosophy:** Coins gate **assists** (hints), not **access** to content. All 500 phrases are free to play.

### Hint tokens

Earned on Daily Streak Day 3. Alternative hint currency — spent before coins.

**Philosophy:** Reward daily return with a free assist — connects retention to gameplay.

---

## Premium (stub)

### What exists today

- **Settings upsell card:** *"Unlock SabiMo Premium — Get exclusive themes and daily challenges."*
- **Premium screen (`/premium`):** *"SabiMo Premium with exclusive themes and daily challenges is coming soon."*
- **Upgrade Now** button navigates to stub — **no payment**

### Future intent (from UI copy only)

| Mentioned benefit | Status |
|-------------------|--------|
| Exclusive themes | **Planned** — not designed |
| Daily challenges (premium) | **Planned** — note: free Daily Challenge already exists; relationship **TBD** |

### What is NOT stated in product

- Price points — **TBD**
- Subscription vs one-time — **TBD**
- Pay-to-win mechanics — **not indicated**; conflicts with [philosophy](02_PHILOSOPHY.md)

---

## Pro decks (stub)

`DeckPromoBanner` promotes expanded categories — no tap action or store integration.

**Future intent (inferred):** Sell themed phrase packs — **TBD — not fully designed**.

---

## Monetization philosophy (Phase 1)

Based on what ships today:

1. **Free to play the full offline loop** — no paywall on core 500 phrases
2. **Cosmetic / convenience monetization later** — premium copy mentions themes, not power
3. **No ads in Phase 1 codebase**
4. **Ethical store compliance** — **TBD** — no compliance doc in repo

---

## Phase alignment

| Phase | Monetization expectation |
|-------|--------------------------|
| **1 — Offline** | No IAP required to ship; economy is in-game only |
| **2 — Online** | Premium, cloud features may justify subscription — **TBD** |
| **3 — Party** | **TBD** |

---

## Metrics (future)

Analytics not integrated. See [12 — Future vision](12_FUTURE_VISION.md).

**TBD — revenue KPIs not defined.**

---

*Next: [08 — Accessibility](08_ACCESSIBILITY.md)*
