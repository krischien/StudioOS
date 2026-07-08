# Product Requirements — Anu-Sabi

> What the application currently does, based on implemented behavior in source code.  
> **Last updated:** 2026-07-08

## Product phase scope

| Phase | Requirements in this document |
|-------|--------------------------------|
| **Phase 1 — Offline** | **Yes** — all `REQ-*` sections below describe current offline behavior |
| **Phase 2 — Online** | **No** — listed only in [Planned](#planned-not-in-current-requirements-scope) |
| **Phase 3 — Party (Bluetooth)** | **No** — not in repository |

**Active milestone:** Phase 1 offline playable. See [ROADMAP.md](../roadmap/ROADMAP.md).

This document describes **Phase 1 behavior only**. Planned features are noted separately.

---

## Core gameplay

### REQ-GAME-001: Phrase decoding

The player is shown a **gibberish phrase** and must type the **real phrase** before a timer expires.

- **Input:** Text answer via `GameAnswerForm`
- **Validation:** Case-insensitive, punctuation stripped, whitespace normalized (`validateAnswer` in `phrases.ts`)
- **Feedback:** Correct → flash + sound; Wrong → wiggle + sound; Timeout/skip → reveal answer

### REQ-GAME-002: Game modes

| Mode | Behavior |
|------|----------|
| `10-round` | Exactly 10 phrases per session, then end screen |
| `endless` | Continues until player stops; reshuffles phrase pool when exhausted |

### REQ-GAME-003: Difficulty timers

| Difficulty | Seconds per phrase |
|------------|-------------------|
| easy | 45 |
| medium | 30 |
| hard | 15 |

### REQ-GAME-004: Categories

| Category | Phrase pool |
|----------|-------------|
| pinoy | 250 Filipino phrases (ids 1–250) |
| world | 250 world phrases (ids 251–500) |
| mixed | Combined pool, shuffled |

### REQ-GAME-005: Skip

Player may skip a phrase. Answer is revealed for 2 seconds. In-game streak resets to 0. No points awarded.

---

## User progression

### REQ-PROG-001: Session score

Points per correct answer equal the current **streak multiplier** (1×, 2×, or 3×).

### REQ-PROG-002: In-game streak multiplier

| Consecutive correct | Multiplier |
|---------------------|------------|
| 0–2 | 1× |
| 3–4 | 2× |
| 5+ | 3× |

### REQ-PROG-003: Best scores

Best session score persisted per **mode + difficulty** combination.

### REQ-PROG-004: Rank

Player rank derived from total unlocked badges:

| Badges unlocked | Rank |
|-----------------|------|
| 0–2 | Novice |
| 3–7 | Apprentice |
| 8–13 | Expert |
| 14+ | Master |

### REQ-PROG-005: Badges

22 achievements unlockable during play based on streaks, scores, perfect rounds, categories, and daily streak milestones.

### REQ-PROG-006: Daily Challenge (games played)

Track games completed today toward a daily goal (default: 3). Resets when `lastActivityDate` is not today.

### REQ-PROG-007: Daily Streak (login rewards)

5-day login reward cycle with coins, hint tokens, and mystery chest on day 5. Cycle resets after day 5.

**Status:** Partial — XP shown on end screen only; not persisted.

---

## Rewards

### REQ-REWARD-001: Session coins

After each session: `max(10, correctCount × 10)` coins added to profile.

### REQ-REWARD-002: Daily Streak rewards

| Day | Reward |
|-----|--------|
| 1 | 20 coins |
| 2 | 30 coins |
| 3 | 1 hint token |
| 4 | 50 coins |
| 5 | Mystery chest (random coins + possible badge) |

### REQ-REWARD-003: Hints

- Cost: 50 coins OR 1 hint token (token preferred)
- Effect: First letter of each answer word revealed
- Limit: One hint per phrase per session

---

## Content categories

### REQ-CONTENT-001: Static phrase database

500 hand-authored `{ gibberish, answer, category }` pairs in `phrases.ts`. Not loaded from external files or API.

### REQ-CONTENT-002: Deck UI

9 deck cards in Categories screen. **3 playable** (Pinoy, Movies→world, Mixed). **6 locked** decks route to coming-soon.

**Status:** Stub — 6 locked decks route to coming-soon; pro deck promo is display-only.

---

## Mobile requirements

### REQ-MOBILE-001: Capacitor wrapper

App packaged for Android (`com.sabimoano.game`) and iOS via Capacitor 7.5.

### REQ-MOBILE-002: Portrait mobile layout

UI constrained to `max-w-md` centered column. Designed for portrait phone screens.

### REQ-MOBILE-003: Haptic feedback

`navigator.vibrate` on game events when haptics enabled in settings.

### REQ-MOBILE-004: Offline capability

All gameplay functions offline after initial load (no network dependency for core features).

**Status:** Planned — not in repository (push notifications, background sync, app store IAP).

---

## Social / competitive (current)

### REQ-SOCIAL-001: Leaderboard display

**Status:** Partial — stub global players; user best score substituted for "You" entry.

**Planned — not in repository:** Real friends, leagues, or online ranking.

---

## Settings

### REQ-SETTINGS-001

Player can configure: game mode, difficulty, sound on/off, haptics on/off. All persisted locally.

---

## Profile

### REQ-PROFILE-001

Player can view/edit display name, see coins, rank, badge progress, daily streak stat, and navigate to history/friends/daily streak.

---

## Planned (not in current requirements scope)

**Phase 2 — Online** and **Phase 3 — Party (Bluetooth)** are not implemented.

| Feature | Phase | Status |
|---------|-------|--------|
| Online multiplayer / accounts | 2 | Planned — not in repository |
| Real leaderboard backend | 2 | Planned — not in repository |
| Premium subscription | 2 | Stub (`ComingSoonScreen`) |
| Pro deck purchases | 2 | Stub (`DeckPromoBanner`) |
| Analytics / telemetry | 2 | Planned — not in repository |
| Rambler Engine procedural puzzles | — | Planned — research only |
| Push notifications | 2 | Planned — not in repository |
| Bluetooth party / local multiplayer | 3 | Planned — not in repository |

---

*See also: [CURRENT_IMPLEMENTATION.md](../implementation/CURRENT_IMPLEMENTATION.md), [ROADMAP.md](../roadmap/ROADMAP.md)*
