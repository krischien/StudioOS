# Current Implementation — Anu-Sabi

> Feature-by-feature documentation of what exists in source code today.  
> **Last updated:** 2026-07-08  
> **Status labels:** Complete · Partial · Stub · Planned (see [README](../README.md#conventions))

---

## Feature index

| Feature | Status |
|---------|--------|
| Core game loop | Complete |
| Scoring system | Complete |
| Coins | Complete |
| Badges | Complete |
| Daily Streak | Complete |
| Daily Challenge | Complete |
| Categories / decks | Partial |
| Difficulty system | Complete |
| Hint system | Complete |
| Leaderboard | Partial |
| Profile | Complete |
| Settings | Complete |
| Game history | Complete |
| Player XP / levels | Partial |
| Friends | Stub |
| Premium | Stub |
| Analytics | Planned |
| Backend | Planned |

---

## Core game loop

**Status:** Complete

**Description:** Player sees a gibberish phrase, types the real answer before a countdown timer expires. Correct answers advance with points; wrong answers allow retry; skip/timeout reveals answer and resets in-game streak.

**Source files:**
- `src/pages/GameScreen.tsx` — orchestration
- `src/data/phrases.ts` — `getPhrases()`, `validateAnswer()`
- `src/hooks/useTimer.ts` — countdown
- `src/types/game.ts` — `DIFFICULTY_TIMES`, `getMultiplier()`
- `src/components/game/*` — UI

**Behavior:**
- Phases: `playing` → `correct-flash` (600ms) → next phrase, or `reveal` (2s on skip/timeout)
- 10-round mode: ends after 10 phrases → `/end`
- Endless mode: reshuffles phrase pool when exhausted; game does not end

---

## Scoring system

**Status:** Complete

**Source files:**
- `src/pages/GameScreen.tsx` — score accumulation
- `src/types/game.ts` — `MULTIPLIER_THRESHOLDS`, `getMultiplier()`
- `src/data/scores.ts` — best score persistence
- `src/pages/EndScreen.tsx` — display, star rating

**Rules (as implemented):**
- Each correct answer adds `multiplier` points (not base 1 always)
- Multiplier: 1× (0–2 streak), 2× (3–4 streak), 3× (5+ streak)
- Best score saved per `{mode}:{difficulty}` key
- End screen star rating from accuracy % (1–3 stars via `StarRating`)
- XP shown as `round(score × 0.6)` — **display only, not saved**

---

## Player XP / levels

**Status:** Partial

**Source files:**
- `src/pages/EndScreen.tsx` — XP display only

**Behavior:** XP is calculated and shown on the end screen. It is **not persisted** to profile or any store. No player level progression exists.

---

## Coins

**Status:** Complete

**Source files:**
- `src/data/profile.ts` — `coins` field, `addCoins()`, `spendCoins()`
- `src/pages/EndScreen.tsx` — awards `max(10, correctCount × 10)` per session
- `src/data/dailyStreak.ts` — coin rewards from login streak

**Defaults:** New profile starts with **500 coins** (`DEFAULT_PROFILE`).

**Sinks:** Hints (50 coins), streak save (50 coins on missed day).

---

## Badges

**Status:** Complete

**Source files:**
- `src/data/badges.ts` — 22 badge definitions, `checkAndUnlockBadges()`, `unlockBadge()`
- `src/data/badgeIcons.ts` — Material icon mapping
- `src/components/BadgeUnlockPopup.tsx` — in-game unlock popup
- `src/pages/AchievementsScreen.tsx` — badge grid
- `src/pages/EndScreen.tsx` — `EndBadgesList` when badges unlocked this session

**Unlock triggers:** First correct, streaks (3/5/10), score milestones, perfect rounds, category perfects, daily streak badges.

**Known gap:** `first-game` badge is defined but **never unlocked** in `checkAndUnlockBadges()`.

---

## Daily Streak

**Status:** Complete

**Description:** 5-day login reward cycle separate from in-game answer streak.

**Source files:**
- `src/data/dailyStreak.ts` — cycle logic, rewards, calendar
- `src/components/daily-streak/*` — 8 UI components
- `src/pages/HomeScreen.tsx` — home card + bottom sheet
- `src/pages/DailyStreakScreen.tsx` — full-page view
- `src/styles/daily-streak.css`

**Rewards (cycle):**
| Day | Reward |
|-----|--------|
| 1 | 20 coins |
| 2 | 30 coins |
| 3 | 1 hint token |
| 4 | 50 coins |
| 5 | Mystery chest (random: coins, badge) |

**Also includes:** Missed-day dialog, streak freeze, save with coins, monthly login calendar, Day 5 celebration overlay.

---

## Daily Challenge

**Status:** Complete

**Description:** Tracks games played today (`dailyCompleted` / `dailyGoal`, default goal 3). Shown on home `DailyChallengeCard` with rank and coins. Separate from login Daily Streak.

**Source files:**
- `src/components/home/DailyChallengeCard.tsx`
- `src/data/profile.ts` — `applyRoundCompletion()`, `dailyCompleted`, `dailyGoal`

---

## Categories

**Status:** Partial

**Playable:** `pinoy`, `world` (via Movies deck), `mixed` — maps to `GameSettings.category`.

**Stub decks:** Funny, Songs, Love, Sports, Food, TV — `playable: false` in `decks.ts`, navigate to `/coming-soon`.

**Source files:**
- `src/data/decks.ts` — deck metadata
- `src/data/phrases.ts` — 250 pinoy + 250 world phrases
- `src/pages/CategoriesScreen.tsx`
- `src/components/decks/*`

---

## Difficulty system

**Status:** Complete

**Source files:**
- `src/types/game.ts` — `DIFFICULTY_TIMES`
- `src/components/settings/DifficultySection.tsx`
- `src/context/GameContext.tsx`

| Difficulty | Timer |
|------------|-------|
| easy | 45 seconds |
| medium | 30 seconds |
| hard | 15 seconds |

---

## Hint system

**Status:** Complete

**Source files:**
- `src/pages/GameScreen.tsx` — `handleHint()`
- `src/utils/hint.ts` — `buildAnswerClue()`
- `src/components/game/HintSkipRow.tsx`
- `src/data/profile.ts` — `spendCoins()`, `spendHintToken()`

**Rules:**
- One hint per phrase
- Cost: **50 coins** OR **1 hint token** (hint token spent first)
- Reveals first letter of each answer word with underscores (e.g. `M____  k___`)
- Hint token count **not displayed** in game UI (technical debt)

---

## Leaderboard

**Status:** Partial

**Source files:**
- `src/pages/LeaderboardScreen.tsx`
- `src/components/leaderboard/*`
- `src/data/leaderboard.ts` — **stub data**

**Implemented:** Premium UI, global tab, podium, list, local name search.

**Planned — not in repository:** Real online leaderboard. Today: `STUB_GLOBAL` has 7 hardcoded players; user score injected from `getUserBestOverall()`; Friends tab always empty.

---

## Profile system

**Status:** Complete

**Source files:**
- `src/pages/ProfileScreen.tsx`
- `src/components/profile/*`
- `src/data/profile.ts`

**Features:** Editable display name, rank display, coins, daily streak stat, badge progress, links to game history / friends / daily streak.

**Rank:** Derived from unlocked badge count — Novice (0–2), Apprentice (3+), Expert (8+), Master (14+).

---

## Settings

**Status:** Complete

**Source files:**
- `src/pages/SettingsScreen.tsx`
- `src/components/settings/*`
- `src/context/GameContext.tsx` — game mode + difficulty
- `src/data/profile.ts` — sound/haptics

**Configurable:**
- Game mode: `10-round` | `endless`
- Difficulty: `easy` | `medium` | `hard`
- Sound enabled / haptics enabled

**Stub:** Premium upsell card → `/premium` (coming soon).

---

## Game history

**Status:** Complete

**Source files:**
- `src/pages/GameHistoryScreen.tsx`
- `src/components/history/GameHistoryList.tsx`
- `src/data/gameHistory.ts`

**Behavior:** Saves last **50** sessions with mode, difficulty, category, score, correct count, date. Written from `EndScreen` on session complete.

---

## Friends

**Status:** Stub

**Source files:** `src/pages/FriendsScreen.tsx`, `src/components/common/ComingSoonScreen.tsx`

---

## Premium

**Status:** Stub

**Source files:** `src/pages/PremiumScreen.tsx`, `src/components/settings/PremiumUpsellCard.tsx`

---

## Sound and haptics

**Status:** Complete

**Source files:** `src/utils/feedback.ts`

- Sound: Web Audio API oscillator tones (correct, wrong, timeout, badge, coin)
- Haptics: `navigator.vibrate` when supported
- Respects `soundEnabled` / `hapticsEnabled` from settings

---

## Share

**Status:** Complete

**Source files:** `src/pages/EndScreen.tsx`

Uses `navigator.share` when available; falls back to clipboard copy.

---

*See also: [MODULE_CATALOG.md](../modules/MODULE_CATALOG.md), [PRODUCT_REQUIREMENTS.md](../requirements/PRODUCT_REQUIREMENTS.md)*
