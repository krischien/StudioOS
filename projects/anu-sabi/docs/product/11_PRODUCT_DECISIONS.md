# Product Decisions — Anu-Sabi

> **Why** important product choices were made — player-facing reasoning.  
> **Last updated:** 2026-07-08  
> **Engineering ADRs:** [ADR_INDEX.md](../decisions/ADR_INDEX.md)

---

## How this relates to ADRs

| Document | Lens |
|----------|------|
| ADR_INDEX | Engineering architecture (localStorage, Capacitor, static phrases) |
| This document | Product and player experience reasoning |

---

## Why offline-first (Phase 1)?

**Decision:** Ship a complete game without network dependency before building online services.

**Why:**

- Instant play — no signup friction on first session
- Works in markets with unreliable data
- Validates core fun before backend cost
- Matches current architecture (all data on device)

**Trade-off:** No real leaderboard or cross-device sync until Phase 2.

**ADR:** [ADR-001](../decisions/ADR_INDEX.md), [ADR-005](../decisions/ADR_INDEX.md)

---

## Why no login system (Phase 1)?

**Decision:** No accounts, no auth, no profile server.

**Why:**

- Reduces barrier to first game
- Offline milestone does not require identity
- Display name in `localStorage` is enough for personal leaderboard placeholder

**Trade-off:** Progress lost if app data cleared; no social graph.

**Future:** Phase 2 may add accounts — **Planned**.

---

## Why localStorage (from a player view)?

**Decision:** Progress lives on the device.

**Why (player benefits):**

- Fast saves; no loading spinners
- Works offline
- Simple mental model — "my phone, my coins"

**Trade-off:** No backup — **Phase 2 cloud save** addresses this.

**ADR:** [ADR-001](../decisions/ADR_INDEX.md)

---

## Why Capacitor?

**Decision:** One web app inside native shells for Android/iOS.

**Why (player benefits):**

- Consistent UI across platforms
- Faster iteration on game feel
- App store presence with one codebase

**Trade-off:** WebView performance limits — acceptable for this game type.

**ADR:** [ADR-002](../decisions/ADR_INDEX.md)

---

## Why static phrases (not procedural)?

**Decision:** 500 hand-authored pairs in the app bundle.

**Why:**

- Quality control — every line tested for the read-aloud "click"
- Offline reliability — no CDN dependency
- Ship Phase 1 without Rambler Engine risk

**Trade-off:** Content updates need app releases; scale limited.

**ADR:** [ADR-003](../decisions/ADR_INDEX.md)

---

## Why three difficulty levels?

**Decision:** Easy (45s), Medium (30s), Hard (15s) — same content.

**Why:**

- One content pipeline serves all skill levels
- Players self-select challenge
- Hard mode enables prestige badges (*Hard Core*, *Matapang*)

**Trade-off:** Difficulty is time pressure only — not separate phrase tiers.

---

## Why badges instead of XP levels?

**Decision:** 22 achievements + rank from badge count; XP shown but not saved.

**Why:**

- Badges commemorate **moments** (*Perfect Ka, Boss*) — more memorable than "Level 47"
- Taglish names reinforce brand voice
- Avoids infinite level grind conflicting with "reward skill"

**Trade-off:** XP system may come later — **TBD**.

---

## Why Daily Streak?

**Decision:** 5-day login reward cycle with coins, hint token, mystery chest.

**Why:**

- Industry-proven retention loop
- Hint token on Day 3 links retention to gameplay
- Day 5 variable reward creates mini-event
- Separate from in-game streak — rewards **return**, not just skill

**Trade-off:** Two "streak" concepts can confuse — **UX debt**.

---

## Why hints cost coins (or tokens)?

**Decision:** Hints are powerful but limited — first letters only, one per phrase.

**Why:**

- Prevents puzzle bypass spam
- Creates meaningful economy sink
- Tokens reward daily habit without free unlimited hints

---

## Why stub leaderboard / friends / premium?

**Decision:** Show UI shells with Coming Soon / stub data rather than hide menus.

**Why (inferred):**

- Signals product ambition to testers and stakeholders
- Reserves navigation patterns for Phase 2
- Premium upsell plants monetization seed without charging

**Trade-off:** Risk of perceived "fake" leaderboard — should be communicated or replaced before broad launch.

**Honest status:** Stub — not real social proof.

---

## Why read-aloud as the core instruction?

**Decision:** Prominent copy: *"Read it aloud to find the real phrase..."*

**Why:**

- Differentiates from typing-only word games
- Activates phonetic decoding — the puzzle type
- Invites social play even in solo mode (whisper, laugh, share)

---

## Why three product phases (Offline → Online → Party)?

**Decision:** Sequential delivery per [ADR-005](../decisions/ADR_INDEX.md).

**Why:**

- Reduces scope creep
- Each phase has a clear player promise
- Party mode (Bluetooth) builds on proven solo + optional online identity

---

*Next: [12 — Future vision](12_FUTURE_VISION.md)*
