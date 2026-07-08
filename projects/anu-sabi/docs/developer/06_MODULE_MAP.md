# 06 — Module Map

> Where code lives and what each area owns.  
> **Last updated:** 2026-07-08

---

## `src/` top level

```
src/
├── App.tsx              # Routes + providers
├── main.tsx             # Entry point
├── index.css            # Global Tailwind + theme
├── pages/               # Route screens (15)
├── components/          # Feature + UI components
├── data/                # Persistence + domain logic
├── context/             # React context (game settings)
├── hooks/               # Shared hooks
├── types/               # TypeScript types
├── utils/               # Pure helpers
├── lib/                 # cn() utility (shadcn)
├── styles/              # Feature CSS
└── test/                # Vitest setup + stub test
```

---

## `src/pages/` — one file per route

| File | Route | Role |
|------|-------|------|
| `HomeScreen.tsx` | `/` | Home hub |
| `GameScreen.tsx` | `/game` | **Core game engine** |
| `EndScreen.tsx` | `/end` | Post-session |
| `AchievementsScreen.tsx` | `/achievements` | Badge grid |
| `CategoriesScreen.tsx` | `/categories` | Deck picker |
| `LeaderboardScreen.tsx` | `/leaderboard` | Leaderboard UI |
| `DailyStreakScreen.tsx` | `/daily-streak` | Login rewards page |
| `SettingsScreen.tsx` | `/settings` | Preferences |
| `ProfileScreen.tsx` | `/profile` | Player profile |
| `GameHistoryScreen.tsx` | `/game-history` | Session list |
| `FriendsScreen.tsx` | `/friends` | Stub |
| `PremiumScreen.tsx` | `/premium` | Stub |
| `ComingSoonPage.tsx` | `/coming-soon` | Stub |
| `NotFound.tsx` | `*` | 404 |
| `Index.tsx` | — | Re-exports HomeScreen; **unused by router** |

---

## `src/data/` — persistence layer

| File | Responsibility | Key exports |
|------|----------------|-------------|
| `profile.ts` | Profile, coins, rank, daily challenge, settings | `loadProfile`, `saveProfile`, `addCoins`, `applyRoundCompletion` |
| `phrases.ts` | 500 phrases, shuffle, validation | `getPhrases`, `validateAnswer` |
| `badges.ts` | 22 badges, unlock logic | `loadBadges`, `checkAndUnlockBadges`, `unlockBadge` |
| `badgeIcons.ts` | Material icon mapping | `getBadgeIcon` |
| `scores.ts` | Best scores per mode+difficulty | `getBestScore`, `saveBestScore` |
| `gameHistory.ts` | Last 50 sessions | `loadGameHistory`, `saveGameResult` |
| `gameSettingsStorage.ts` | Game settings persistence | `loadGameSettings`, `saveGameSettings` |
| `dailyStreak.ts` | 5-day login cycle | `getDailyStreakState`, `claimStreakReward` |
| `decks.ts` | Deck metadata (9 decks) | `DECKS`, `getPlayableDecks` |
| `leaderboard.ts` | **Stub** leaderboard data | `getGlobalLeaderboard`, `STUB_GLOBAL` |

**Pattern:** Pure functions, direct `localStorage` access, merge-with-defaults on load.

---

## `src/components/` — by domain

| Folder | Files | Purpose |
|--------|-------|---------|
| `game/` | Timer, answer form, hints, phrase bubble | In-game UI |
| `home/` | Daily challenge, action grid, top/bottom nav wrappers | Home screen |
| `daily-streak/` | 8 components | Login streak UI |
| `end/` | Score card, stars, badges, share | End screen |
| `profile/` | Hero, stats, progress, actions | Profile |
| `settings/` | Mode, difficulty, toggles, premium upsell | Settings |
| `leaderboard/` | Podium, list, tabs, search | Leaderboard |
| `medals/` | Badge grid, cards | Achievements |
| `decks/` | Deck cards, grid, promo banner | Categories |
| `history/` | Game history list | History |
| `premium/` | Top bar, bottom nav | Shared chrome |
| `common/` | ComingSoonScreen | Stub wrapper |
| `ui/` | ~45 shadcn/Radix primitives | Design system |

---

## `src/context/`

| File | Purpose |
|------|---------|
| `GameContext.tsx` | `category`, `mode`, `difficulty` + `setSettings()` with localStorage sync |

---

## `src/hooks/`

| File | Purpose |
|------|---------|
| `useTimer.ts` | Countdown for game phrases |
| `use-toast.ts` | shadcn toast |
| `use-mobile.tsx` | Breakpoint detection |

---

## `src/utils/`

| File | Purpose |
|------|---------|
| `feedback.ts` | Web Audio + `navigator.vibrate` |
| `hint.ts` | `buildAnswerClue()` |
| `categoryLabels.ts` | Display labels for categories |

---

## `src/types/`

| File | Purpose |
|------|---------|
| `game.ts` | `Phrase`, `GameSettings`, `Badge`, `DIFFICULTY_TIMES`, `getMultiplier()` |

---

## `src/styles/`

| File | Purpose |
|------|---------|
| `premium-home.css` | Home + game premium theme |
| `daily-streak.css` | Daily streak animations |

---

## Native projects

| Path | Purpose |
|------|---------|
| `android/` | Capacitor Android — `com.sabimoano.game` |
| `ios/App/` | Capacitor iOS |
| `capacitor.config.ts` | App ID, webDir |

---

## Config files (rebuild reference)

| File | Purpose |
|------|---------|
| `package.json` | Dependencies + scripts |
| `vite.config.ts` | Port 8080, `@/` alias |
| `tsconfig.json` | Path alias; `strictNullChecks: false` |
| `tailwind.config.ts` | Theme tokens |
| `vitest.config.ts` | Test environment (jsdom) |

---

## Orphan / unused code

| Item | Notes |
|------|-------|
| `CircularTimer.tsx` | Superseded by `PremiumCircularTimer` |
| `Index.tsx` | Not wired in router |
| `HomeBottomNav.tsx` / `HomeTopBar.tsx` | Re-export premium components |

---

*Next: [07 — Feature status](./07_FEATURE_STATUS.md)*
