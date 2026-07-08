# Module Catalog — Anu-Sabi

> Catalog of major modules in the current codebase.  
> **Last updated:** 2026-07-08

---

## Application shell

### Module: App Shell

| Field | Value |
|-------|-------|
| **Location** | `src/App.tsx`, `src/main.tsx` |
| **Responsibility** | Mount React, wrap providers (QueryClient, Tooltip, GameContext, Toasters), define all routes |
| **Dependencies** | All page components, `GameContext`, react-router-dom |
| **Status** | Complete |

---

## Pages (route modules)

### Module: Home

| Field | Value |
|-------|-------|
| **Location** | `src/pages/HomeScreen.tsx` |
| **Responsibility** | Home hub — Daily Challenge card, action grid, Daily Streak card/sheet, missed-day dialog |
| **Dependencies** | `DailyChallengeCard`, `HomeActionGrid`, `daily-streak/*`, `dailyStreak.ts` |
| **Status** | Complete |

### Module: Game Engine (session)

| Field | Value |
|-------|-------|
| **Location** | `src/pages/GameScreen.tsx` |
| **Responsibility** | Core gameplay loop — timer, scoring, streak multiplier, hints, skip, badge unlocks, phrase advancement |
| **Dependencies** | `phrases.ts`, `badges.ts`, `profile.ts`, `useTimer`, `types/game.ts`, `game/*` components |
| **Status** | Complete |

### Module: End Screen

| Field | Value |
|-------|-------|
| **Location** | `src/pages/EndScreen.tsx` |
| **Responsibility** | Post-session results — coins, stars, accuracy, share, badge list, history save |
| **Dependencies** | `profile.ts`, `scores.ts`, `gameHistory.ts`, `end/*` components |
| **Status** | Complete |

### Module: Categories / Decks

| Field | Value |
|-------|-------|
| **Location** | `src/pages/CategoriesScreen.tsx`, `src/components/decks/*`, `src/data/decks.ts` |
| **Responsibility** | Deck picker UI; sets `GameContext.category` |
| **Dependencies** | `GameContext`, `decks.ts` |
| **Status** | Partial (3 playable decks, 6 stub) |

### Module: Leaderboard

| Field | Value |
|-------|-------|
| **Location** | `src/pages/LeaderboardScreen.tsx`, `src/data/leaderboard.ts` |
| **Responsibility** | Leaderboard UI with podium, list, search |
| **Dependencies** | `scores.ts` (user best), stub data |
| **Status** | Partial (stub data) |

### Module: Achievements

| Field | Value |
|-------|-------|
| **Location** | `src/pages/AchievementsScreen.tsx`, `src/components/medals/*` |
| **Responsibility** | Display all 22 badges and unlock progress |
| **Dependencies** | `badges.ts` |
| **Status** | Complete |

### Module: Profile

| Field | Value |
|-------|-------|
| **Location** | `src/pages/ProfileScreen.tsx`, `src/components/profile/*` |
| **Responsibility** | Player name, stats, badge progress, navigation links |
| **Dependencies** | `profile.ts`, `badges.ts` |
| **Status** | Complete |

### Module: Settings

| Field | Value |
|-------|-------|
| **Location** | `src/pages/SettingsScreen.tsx`, `src/components/settings/*` |
| **Responsibility** | Game mode, difficulty, sound/haptics toggles |
| **Dependencies** | `GameContext`, `profile.ts` |
| **Status** | Complete |

### Module: Daily Streak (full page)

| Field | Value |
|-------|-------|
| **Location** | `src/pages/DailyStreakScreen.tsx` |
| **Responsibility** | Full-page daily login reward claim UI |
| **Dependencies** | `dailyStreak.ts`, `daily-streak/*` components |
| **Status** | Complete |

### Module: Game History

| Field | Value |
|-------|-------|
| **Location** | `src/pages/GameHistoryScreen.tsx`, `src/data/gameHistory.ts` |
| **Responsibility** | List past 50 game sessions |
| **Dependencies** | `gameHistory.ts` |
| **Status** | Complete |

### Module: Friends (stub)

| Field | Value |
|-------|-------|
| **Location** | `src/pages/FriendsScreen.tsx` |
| **Responsibility** | Stub screen — coming soon message |
| **Dependencies** | `ComingSoonScreen` |
| **Status** | Stub |

### Module: Premium (stub)

| Field | Value |
|-------|-------|
| **Location** | `src/pages/PremiumScreen.tsx` |
| **Responsibility** | Stub screen — coming soon message |
| **Dependencies** | `ComingSoonScreen` |
| **Status** | Stub |

---

## Data modules

### Module: Profile & Economy

| Field | Value |
|-------|-------|
| **Location** | `src/data/profile.ts` |
| **Responsibility** | Profile CRUD, coins, rank computation, daily game progress, app settings, round completion side effects |
| **Dependencies** | `badges.ts`, `dailyStreak.ts` (normalize on load) |
| **Status** | Complete |

### Module: Phrase Content

| Field | Value |
|-------|-------|
| **Location** | `src/data/phrases.ts` |
| **Responsibility** | 500 static phrase pairs, shuffle, answer normalization/validation |
| **Dependencies** | `types/game.ts` |
| **Status** | Complete |

### Module: Daily Streak Logic

| Field | Value |
|-------|-------|
| **Location** | `src/data/dailyStreak.ts` |
| **Responsibility** | 5-day login cycle, rewards, calendar, missed-day save/freeze, badge checks |
| **Dependencies** | `profile.ts`, `badges.ts`, `feedback.ts` |
| **Status** | Complete |

### Module: Badges

| Field | Value |
|-------|-------|
| **Location** | `src/data/badges.ts`, `src/data/badgeIcons.ts` |
| **Responsibility** | 22 badge definitions, unlock persistence, runtime unlock checks |
| **Dependencies** | `localStorage` |
| **Status** | Complete (with `first-game` wiring gap) |

### Module: Scores

| Field | Value |
|-------|-------|
| **Location** | `src/data/scores.ts` |
| **Responsibility** | Best score per mode+difficulty |
| **Dependencies** | `localStorage` |
| **Status** | Complete |

### Module: Game History Store

| Field | Value |
|-------|-------|
| **Location** | `src/data/gameHistory.ts` |
| **Responsibility** | Append session records, max 50 FIFO |
| **Dependencies** | `localStorage` |
| **Status** | Complete |

### Module: Game Settings Store

| Field | Value |
|-------|-------|
| **Location** | `src/data/gameSettingsStorage.ts` |
| **Responsibility** | Persist category, mode, difficulty |
| **Dependencies** | `localStorage`, `GameContext` |
| **Status** | Complete |

### Module: Leaderboard Data (stub)

| Field | Value |
|-------|-------|
| **Location** | `src/data/leaderboard.ts` |
| **Responsibility** | Stub player list, user best score aggregation |
| **Dependencies** | `scores.ts` |
| **Status** | Stub |

### Module: Deck Metadata

| Field | Value |
|-------|-------|
| **Location** | `src/data/decks.ts` |
| **Responsibility** | 9 deck UI definitions, playable flags, category mapping |
| **Dependencies** | `types/game.ts` |
| **Status** | Partial |

---

## Context

### Module: Game Context

| Field | Value |
|-------|-------|
| **Location** | `src/context/GameContext.tsx` |
| **Responsibility** | Shared game settings state with localStorage sync |
| **Dependencies** | `gameSettingsStorage.ts` |
| **Status** | Complete |

---

## Utilities

### Module: Feedback (audio/haptics)

| Field | Value |
|-------|-------|
| **Location** | `src/utils/feedback.ts` |
| **Responsibility** | Web Audio tones, navigator.vibrate, respects settings |
| **Dependencies** | `profile.ts` (settings) |
| **Status** | Complete |

### Module: Hint builder

| Field | Value |
|-------|-------|
| **Location** | `src/utils/hint.ts` |
| **Responsibility** | Build first-letter underscore clue string |
| **Dependencies** | None |
| **Status** | Complete |

---

## UI chrome

### Module: Premium Navigation

| Field | Value |
|-------|-------|
| **Location** | `src/components/premium/PremiumBottomNav.tsx`, `PremiumTopBar.tsx` |
| **Responsibility** | Shared bottom nav (Home/Play/Medals/Profile) and top coin bar |
| **Dependencies** | react-router-dom |
| **Status** | Complete |

### Module: Daily Streak UI

| Field | Value |
|-------|-------|
| **Location** | `src/components/daily-streak/*` (8 files) |
| **Responsibility** | Home card, bottom sheet, flame, calendar, claim overlays, day 5 celebration |
| **Dependencies** | `dailyStreak.ts`, `daily-streak.css` |
| **Status** | Complete |

---

## Planned modules (not in repository)

| Module | Status |
|--------|--------|
| Rambler Engine | Planned — research only |
| Backend API client | Planned — not in repository |
| Analytics SDK | Planned — not in repository |
| Authentication | Planned — not in repository |
| SQLite persistence | Planned — not in repository |

---

*See also: [CURRENT_IMPLEMENTATION.md](../implementation/CURRENT_IMPLEMENTATION.md)*
