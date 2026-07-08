# 08 — Rebuild Guide

> Ordered **technical** build phases for reconstructing Anu-Sabi.  
> **Last updated:** 2026-07-08

> **Note:** These are **implementation build steps** (scaffold → data → game loop).  
> **Product phases** are separate: **1 Offline** · **2 Online** · **3 Party/Bluetooth**.  
> See [ROADMAP.md](../roadmap/ROADMAP.md). **Rebuild for Phase 1 only** unless Phase 2/3 is explicitly in scope.

---

## Before you start

1. Read [04 — Game rules](./04_GAME_RULES.md) completely
2. Read [03 — Data & persistence](./03_DATA_AND_PERSISTENCE.md) for storage keys
3. Decide target: **web-only** or **web + Capacitor**
4. Use [07 — Feature status](./07_FEATURE_STATUS.md) to scope Tier 1 vs Tier 2

---

## Phase 0 — Scaffold

**Goal:** Empty app runs with routing shell.

| Step | Deliverable |
|------|-------------|
| 0.1 | Vite + React + TypeScript project |
| 0.2 | Tailwind + path alias `@/` |
| 0.3 | `react-router-dom` with placeholder pages |
| 0.4 | `GameProvider` + `GameContext` |
| 0.5 | `premium-home.css` or equivalent dark mobile layout |

**Acceptance:** Navigate between `/`, `/game`, `/settings` with empty content.

---

## Phase 1 — Data layer

**Goal:** All persistence functions work in isolation (unit-testable).

| Step | Module | Key functions |
|------|--------|---------------|
| 1.1 | `types/game.ts` | Types, `DIFFICULTY_TIMES`, `getMultiplier` |
| 1.2 | `gameSettingsStorage.ts` | Load/save game settings |
| 1.3 | `profile.ts` | Profile CRUD, coins, rank, daily challenge |
| 1.4 | `scores.ts` | Best score per mode+difficulty |
| 1.5 | `badges.ts` | 22 definitions, unlock persistence |
| 1.6 | `phrases.ts` | 500 phrases, `getPhrases`, `validateAnswer` |
| 1.7 | `gameHistory.ts` | FIFO 50 entries |

**Acceptance:** Call functions in browser console; verify `localStorage` keys match [03](./03_DATA_AND_PERSISTENCE.md).

---

## Phase 2 — Core game loop

**Goal:** Playable 10-round session with scoring.

| Step | Deliverable |
|------|-------------|
| 2.1 | `useTimer` hook |
| 2.2 | `GameScreen` — phrase display, input, phases |
| 2.3 | Correct/wrong/timeout/skip flows |
| 2.4 | Streak multiplier scoring |
| 2.5 | `EndScreen` — score, coins, navigate state |
| 2.6 | `saveBestScore` on session end |

**Acceptance:** Complete 10-round game; coins increase; best score persists after refresh.

---

## Phase 3 — Progression & settings

| Step | Deliverable |
|------|-------------|
| 3.1 | Settings screen — mode, difficulty, sound/haptics |
| 3.2 | Endless mode + phrase reshuffle |
| 3.3 | `checkAndUnlockBadges` integration |
| 3.4 | `BadgeUnlockPopup` + achievements screen |
| 3.5 | Star rating + share on end screen |
| 3.6 | `applyRoundCompletion` + Daily Challenge card |

**Acceptance:** Change difficulty → timer changes; unlock badge → visible on achievements.

---

## Phase 4 — Content & navigation

| Step | Deliverable |
|------|-------------|
| 4.1 | `decks.ts` + Categories screen |
| 4.2 | Home screen — action grid, top/bottom nav |
| 4.3 | Profile screen — name edit, stats |
| 4.4 | Game history screen |
| 4.5 | Hints (coins + tokens) |
| 4.6 | `feedback.ts` audio/haptics |

**Acceptance:** Select Pinoy deck → only pinoy phrases; history shows completed games.

---

## Phase 5 — Daily Streak

| Step | Deliverable |
|------|-------------|
| 5.1 | `dailyStreak.ts` full cycle logic |
| 5.2 | Home card + bottom sheet |
| 5.3 | `/daily-streak` full page |
| 5.4 | Missed-day dialog, calendar, Day 5 celebration |
| 5.5 | Streak badges |

**Acceptance:** Claim day 1 reward; refresh → cannot claim again same day; day 3 grants hint token.

---

## Phase 6 — Polish screens (stub OK)

| Step | Deliverable |
|------|-------------|
| 6.1 | Leaderboard UI + stub data |
| 6.2 | Friends / Premium / Coming Soon stubs |
| 6.3 | Locked deck routing |
| 6.4 | 404 page |

**Acceptance:** App matches [05 — Routes](./05_ROUTES_AND_SCREENS.md) route table.

---

## Phase 7 — Capacitor (optional)

| Step | Deliverable |
|------|-------------|
| 7.1 | `capacitor.config.ts` — `com.sabimoano.game` |
| 7.2 | `npm run build && cap sync` |
| 7.3 | Android project runs on device |
| 7.4 | iOS project (macOS) |

**Acceptance:** `localStorage` persists between app restarts on device.

---

## Phase 8 — Explicitly skip (Phase 1 rebuild)

Do **not** implement for **Phase 1 offline** parity:

- Backend API, auth, cloud sync
- Real online leaderboard
- In-app purchases
- Rambler Engine / procedural phrases
- Analytics SDK
- **Bluetooth party mode** (Phase 3)

Mark as **Planned** per [ROADMAP.md](../roadmap/ROADMAP.md).

---

## Verification checklist (full rebuild)

- [ ] All 15 routes from `App.tsx` exist
- [ ] All 6 `localStorage` keys match schemas
- [ ] Scoring matches [04 — Game rules](./04_GAME_RULES.md) tables
- [ ] 500 phrases load and shuffle
- [ ] Daily Streak 5-day cycle works
- [ ] Feature status matches [07](./07_FEATURE_STATUS.md)
- [ ] Known gaps documented if intentionally preserved

---

*Next: [09 — Technical debt](./09_TECHNICAL_DEBT.md)*
