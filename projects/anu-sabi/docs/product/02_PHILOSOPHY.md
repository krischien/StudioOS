# Product Philosophy — Anu-Sabi

> Principles that guide product and design decisions.  
> **Last updated:** 2026-07-08  
> **Rule:** Only principles **supported by the current product or confirmed direction**. Nothing here is aspirational unless marked **Planned**.

---

## How to use this document

When proposing a feature, ask: *Does this align with our philosophy?* If it conflicts, document the exception in [11 — Product decisions](11_PRODUCT_DECISIONS.md).

Engineering principles (localStorage, Capacitor, etc.) live in [ADR_INDEX.md](../decisions/ADR_INDEX.md). This document is **player- and experience-facing**.

---

## Confirmed principles

### 1. Easy to learn, difficult to master

**Supported by:** Single input mechanic (type the answer); three difficulty timers (45s / 30s / 15s); streak multiplier rewards consistency; endless mode and high-score badges for experts.

**Implications:**

- Onboarding should not require tutorials for basic play — the speech bubble explains the hook
- Depth comes from difficulty, category choice, and streak discipline — not from complex menus

---

### 2. Quick game sessions

**Supported by:** Default **10-round mode**; per-phrase timers; home screen optimized for one-tap **Play**.

**Implications:**

- End screen should feel like a natural pause, not a grind checkpoint
- Endless mode exists for deep sessions but is optional in Settings

---

### 3. Offline-first (Phase 1)

**Supported by:** No backend; all progression on device; explicit **Phase 1** milestone in [ROADMAP.md](../roadmap/ROADMAP.md).

**Implications:**

- No login required to play
- Leaderboard and friends may show placeholder UI until Phase 2
- Share score uses device share sheet / clipboard — no server required

---

### 4. Mobile-first

**Supported by:** Portrait `max-w-md` layout; large touch targets (`bouncy-btn`, rounded-3xl cards); haptics; Capacitor packaging; bottom navigation.

**Implications:**

- Desktop browser is a dev convenience, not the primary UX target
- One-handed play: primary actions are thumb-reachable

---

### 5. Filipino-first, globally expandable

**Supported by:** 250 Pinoy phrases + 250 world phrases; Pinoy deck prominent in Categories; badge names mix Tagalog and English; world content includes global songs and quotes.

**Implications:**

- Tone and humor can be Pinoy-coded without excluding world deck players
- Future localization — **TBD** — not implemented

---

### 6. Reward skill, not grinding

**Supported by:**

- Score multiplier tied to **in-game answer streak**, not time spent
- Badges unlock on skill milestones (perfect rounds, streaks, high endless scores)
- XP on end screen is **display only** — not persisted (no level grind)
- Coins earned from **correct answers in session**, not passive timers alone

**Implications:**

- Avoid systems that reward only login without play (Daily Streak gives small rewards but core coins come from gameplay)
- Premium must not sell power — **Planned** premium mentions themes/challenges only, not pay-to-win

---

### 7. Light progression, not an RPG

**Supported by:** Coins, badges, rank titles (Novice → Master), daily streak — no persistent character levels, no inventory, no stat trees.

**Implications:**

- Progress should feel collectible (medals) not obligatory (quests)
- Rank is derived from badges — encourages variety, not single-stat grinding

---

### 8. Playful, premium feel

**Supported by:** Material 3–inspired palette; gradient hero card; confetti; speech-bubble game UI; Material Symbols icons; Plus Jakarta Sans typography.

**Implications:**

- Feedback should be immediate and celebratory on success
- Errors should be gentle (wiggle, retry) not punishing (hard fail the round on one typo)

---

## Principles implied but not formally documented

| Principle | Status |
|-----------|--------|
| Family-friendly content | **TBD** — No age rating or content policy in repo; phrases appear casual/pop-cultural |
| Fair monetization | **TBD** — Premium is stub only; no pricing ethics doc |
| Accessibility-first | **Partial** — Some patterns exist; see [08 — Accessibility](08_ACCESSIBILITY.md) |

---

## Anti-patterns (things we avoid in Phase 1)

| Anti-pattern | Why |
|--------------|-----|
| Login wall before first game | Conflicts with offline-first, instant play |
| Pay-to-win hints or streaks | Conflicts with reward skill |
| Forced long sessions | Conflicts with quick sessions |
| Opaque scoring | Streak multiplier is visible in-game |
| Fake social proof | Leaderboard uses stub data today — should be labeled or replaced in Phase 2 |

---

*Next: [03 — Game design](03_GAME_DESIGN.md)*
