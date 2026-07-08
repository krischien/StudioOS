# Content Strategy — Anu-Sabi

> What players decode today, how content is organized, and where it is headed.  
> **Last updated:** 2026-07-08

---

## Content premise

Every puzzle is a **hand-authored pair**:

- **Gibberish** — phonetic text that sounds like the answer when read aloud
- **Answer** — the real phrase players must type

Content is the product's long-term fuel. Game systems (streaks, coins) support replay; **phrases create novelty**.

---

## Current content (live)

| Pool | Count | IDs | Examples (from data) |
|------|-------|-----|----------------------|
| **Pinoy** | 250 | 1–250 | *Mahal kita*, *Magandang umaga*, *Charot lang* |
| **World** | 250 | 251–500 | Song titles, global phrases |
| **Mixed** | 500 combined | Shuffled at runtime | Both pools |

**Delivery:** Static array compiled into the app — no download, no CMS.

**Technical reference:** `src/data/phrases.ts` — not repeated here.

---

## Playable categories (player-facing)

| Deck UI | Maps to | Status |
|---------|---------|--------|
| Pinoy | `pinoy` | Live |
| Movies | `world` | Live |
| Mixed | `mixed` | Live |
| Funny, Songs, Love, Sports, Food, TV | — | **Stub** (Coming Soon) |

**Why deck UI ≠ raw categories:** Marketing-friendly labels (Movies) over internal IDs (world).

---

## Content quality goals

**Supported by current direction (inferred from product + `NEXT_STEPS.md`):**

| Goal | Rationale |
|------|-----------|
| **Gibberish must sound like the answer when spoken** | Core mechanic fails otherwise |
| **Answers should be recognizable** | Pinoy cultural touchstones; world songs/quotes |
| **Length variety** | Short greetings to long lyrics — tests different skills |
| **Avoid offensive or exclusionary lines** | **TBD** — no formal content policy document |

**Known quality issue:** Phrase id 12 flagged in `NEXT_STEPS.md` — gibberish/answer mismatch. Quality pass needed before scale.

---

## Difficulty balance (content vs timer)

Content difficulty is **not separately tagged** today. Challenge comes from:

- **Timer** (easy / medium / hard)
- **Phrase familiarity** (implicit — some answers are niche)
- **Length** (more words = harder to type under pressure)

**TBD — content difficulty scoring.** Rambler Engine research proposes automated difficulty — **Planned — research only**.

---

## Localization

| Topic | Status |
|-------|--------|
| UI language | Primarily English with Tagalog game copy |
| Pinoy phrase answers | Filipino / Taglish / English mix in content |
| Full UI localization | **TBD — not implemented** |
| Additional languages for world pool | **TBD** |

---

## Planned categories (stub decks)

These appear in Categories UI but route to Coming Soon:

- Funny, Songs, Love, Sports, Food, TV

**Intent (inferred):** Thematic decks for marketing and variety — **TBD — not fully designed**.

**Pro decks promo** (`DeckPromoBanner`): Display-only — *"50+ categories"* — **Stub**, no purchase flow.

---

## Future content pipeline

| Approach | Status |
|----------|--------|
| Manual authoring in `phrases.ts` | **Current** |
| External CMS / JSON bundles | **Planned — not in repository** |
| API-loaded content | **Planned — Phase 2** |
| **Rambler Engine** procedural generation | **Planned — research only** |
| LLM-assisted authoring | **Concept** — see [12 — Future vision](12_FUTURE_VISION.md) |

---

## How future content should be organized

**TBD — This feature is not yet fully designed.**

Working assumptions for documentation:

1. **Deck** = player-facing bundle (Pinoy, Songs, etc.)
2. **Category** = filter key for phrase pool (`pinoy` | `world` | `mixed`)
3. New decks should declare `playable: true` only when content exists
4. Locked decks should stay behind Coming Soon until quality bar met

---

## Content versioning

**TBD — requires confirmation.** Today, content updates require app rebuild. No in-app content version display.

---

*Next: [07 — Monetization](07_MONETIZATION.md)*
