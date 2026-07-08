# Codebase Structure — Anu-Sabi

> Responsibility of each area under repository root `src/`.  
> **Last updated:** 2026-07-08

Application source lives at **repository root**, not inside `projects/anu-sabi/`.

---

## Top-level repository layout

```
<repo-root>/
├── src/                 # React application
├── public/              # Static assets (favicon, robots.txt)
├── android/             # Capacitor Android project
├── ios/                 # Capacitor iOS project
├── docs/                # Earlier standalone documentation
├── projects/anu-sabi/   # StudioOS documentation (this tree)
├── scripts/             # Utility scripts (doc merge)
├── index.html           # HTML entry
├── vite.config.ts
├── capacitor.config.ts
├── tailwind.config.ts
└── package.json
```

---

## `src/` overview

```
src/
├── main.tsx           # React entry point
├── App.tsx            # Providers + routes
├── App.css            # Legacy app styles
├── index.css          # Tailwind + global CSS
├── vite-env.d.ts
├── pages/             # Route screens (15 files)
├── components/        # Feature + UI components
├── data/              # Persistence + domain logic (10 modules)
├── context/           # React context (GameContext)
├── hooks/             # Custom hooks (3)
├── utils/             # Pure helpers (3)
├── types/             # Shared TS types (game.ts)
├── styles/            # Feature CSS (2 files)
├── lib/               # shadcn cn() helper
└── test/              # Vitest setup + stub test
```

---

## `src/pages/`

**Responsibility:** One component per route. Owns screen-level state, composes feature components, calls `data/` modules, triggers navigation.

| File | Route |
|------|-------|
| `HomeScreen.tsx` | `/` |
| `GameScreen.tsx` | `/game` |
| `EndScreen.tsx` | `/end` |
| `CategoriesScreen.tsx` | `/categories` |
| `LeaderboardScreen.tsx` | `/leaderboard` |
| `AchievementsScreen.tsx` | `/achievements` |
| `ProfileScreen.tsx` | `/profile` |
| `SettingsScreen.tsx` | `/settings` |
| `DailyStreakScreen.tsx` | `/daily-streak` |
| `GameHistoryScreen.tsx` | `/game-history` |
| `FriendsScreen.tsx` | `/friends` |
| `PremiumScreen.tsx` | `/premium` |
| `ComingSoonPage.tsx` | `/coming-soon` |
| `NotFound.tsx` | `*` |
| `Index.tsx` | Unused re-export of HomeScreen |

**No `layouts/` folder** — layout composed inline per page.

---

## `src/components/`

**Responsibility:** Reusable UI organized by feature domain.

| Subfolder | Count | Purpose |
|-----------|-------|---------|
| `daily-streak/` | 8 | Login reward UI |
| `game/` | 6 | In-game UI |
| `home/` | 4 | Home screen |
| `end/` | 7 | End-of-round screen |
| `profile/` | 5 | Profile screen |
| `leaderboard/` | 5 | Leaderboard |
| `settings/` | 6 | Settings |
| `medals/` | 4 | Achievements |
| `decks/` | 4 | Category picker |
| `history/` | 1 | Game history list |
| `premium/` | 2 | Shared top/bottom nav |
| `common/` | 1 | ComingSoonScreen |
| `ui/` | ~45 | shadcn/Radix primitives |
| Root | 5 | BadgeUnlockPopup, ConfettiEffect, StreakBanner, CircularTimer*, NavLink |

*`CircularTimer` is orphaned; `PremiumCircularTimer` is used in game.

---

## `src/data/`

**Responsibility:** Domain logic and persistence. Acts as the application's service layer. All persistent storage uses `localStorage`.

| Module | Role |
|--------|------|
| `profile.ts` | Player profile, coins, rank, daily game progress, app settings |
| `gameSettingsStorage.ts` | Category, mode, difficulty |
| `phrases.ts` | 500 phrases, shuffle, answer validation |
| `scores.ts` | Best scores per mode+difficulty |
| `badges.ts` | Badge definitions and unlock logic |
| `badgeIcons.ts` | Badge → Material icon map |
| `dailyStreak.ts` | 5-day login streak system |
| `gameHistory.ts` | Session history (max 50) |
| `leaderboard.ts` | Stub leaderboard data |
| `decks.ts` | Deck/category metadata for UI |

**No `services/` folder.** No repository interfaces. No ORM.

---

## `src/hooks/`

| Hook | File | Used by |
|------|------|---------|
| `useTimer` | `useTimer.ts` | `GameScreen` |
| `useToast` | `use-toast.ts` | shadcn toast system |
| `useIsMobile` | `use-mobile.tsx` | shadcn sidebar (breakpoint) |

---

## `src/context/`

| Context | File | Exposes |
|---------|------|---------|
| `GameContext` | `GameContext.tsx` | `settings`, `setCategory`, `setMode`, `setDifficulty` |

Persisted via `gameSettingsStorage.ts` on every change.

---

## `src/utils/`

| File | Exports | Purpose |
|------|---------|---------|
| `feedback.ts` | `playSound`, `triggerHaptic` | Web Audio + vibration |
| `hint.ts` | `buildAnswerClue` | First-letter hint strings |
| `categoryLabels.ts` | `CATEGORY_LABELS`, `getCategoryLabel` | Display labels |

---

## `src/types/`

| File | Contents |
|------|----------|
| `game.ts` | `Category`, `Mode`, `Difficulty`, `Phrase`, `Badge`, `GameSettings`, `DIFFICULTY_TIMES`, `getMultiplier()` |

---

## `src/styles/`

| File | Purpose |
|------|---------|
| `premium-home.css` | Material 3–inspired premium theme, animations |
| `daily-streak.css` | Daily streak animations (glow, float, chest shake) |

Imported by pages that use premium UI.

---

## `src/lib/`

| File | Purpose |
|------|---------|
| `utils.ts` | `cn()` — clsx + tailwind-merge for shadcn |

---

## `src/test/`

| File | Purpose |
|------|---------|
| `setup.ts` | Vitest + jest-dom setup |
| `example.test.ts` | Placeholder test (`expect(true).toBe(true)`) |

---

## Native projects

| Path | Purpose |
|------|---------|
| `android/` | Capacitor Android — Gradle, MainActivity, resources |
| `ios/` | Capacitor iOS — Xcode, AppDelegate, assets |

Synced from `dist/` via `npm run cap:sync`.

---

*See also: [MODULE_CATALOG.md](../modules/MODULE_CATALOG.md), [SYSTEM_ARCHITECTURE.md](../architecture/SYSTEM_ARCHITECTURE.md)*
