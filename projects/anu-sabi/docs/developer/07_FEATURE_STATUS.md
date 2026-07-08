# 07 — Feature Status

> Single matrix of what exists today, mapped to **product phases**.  
> **Last updated:** 2026-07-08

**Product phases:** 1 Offline (active) · 2 Online · 3 Party/Bluetooth — see [ROADMAP.md](../roadmap/ROADMAP.md).

---

## Status labels

| Label | Meaning |
|-------|---------|
| **Complete** | Fully implemented locally |
| **Partial** | Works with known gaps or stub data |
| **Stub** | Placeholder only |
| **Planned** | No implementation in repository |

---

## Feature matrix

| Feature | Status | Source files | Notes |
|---------|--------|--------------|-------|
| Core game loop | Complete | `GameScreen.tsx`, `phrases.ts`, `useTimer.ts` | Timer, validation, skip |
| 10-round mode | Complete | `GameScreen.tsx` | Ends after 10 phrases |
| Endless mode | Complete | `GameScreen.tsx` | Reshuffles pool when exhausted |
| Difficulty timers | Complete | `types/game.ts` | 45s / 30s / 15s |
| Answer validation | Complete | `phrases.ts` | Normalized string match |
| Streak multiplier | Complete | `types/game.ts`, `GameScreen.tsx` | 1× / 2× / 3× |
| Best scores | Complete | `scores.ts` | Per mode+difficulty |
| Session coins | Complete | `EndScreen.tsx`, `profile.ts` | `max(10, correct×10)` |
| Player XP | Partial | `EndScreen.tsx` | Display only; not saved |
| Hints | Complete | `GameScreen.tsx`, `hint.ts` | 50 coins or 1 token |
| Hint token UI | Partial | — | Balance not shown in game |
| Badges (22) | Complete | `badges.ts` | `first-game` never unlocks |
| Rank from badges | Complete | `profile.ts` | Novice → Master |
| Daily Streak (login) | Complete | `dailyStreak.ts`, `daily-streak/*` | 5-day cycle |
| Daily Challenge | Complete | `DailyChallengeCard`, `profile.ts` | Games played today |
| Categories (playable) | Complete | `decks.ts`, `phrases.ts` | Pinoy, Movies, Mixed |
| Locked decks | Stub | `decks.ts` | 6 decks → coming-soon |
| Profile | Complete | `ProfileScreen.tsx`, `profile.ts` | Name, stats |
| Settings | Complete | `SettingsScreen.tsx` | Mode, difficulty, feedback |
| Game history | Complete | `gameHistory.ts` | Max 50 entries |
| End screen | Complete | `EndScreen.tsx` | Stars, share, badges |
| Sound / haptics | Complete | `feedback.ts` | Respects settings |
| Share | Complete | `EndScreen.tsx` | Web Share API + clipboard |
| Leaderboard UI | Partial | `LeaderboardScreen.tsx` | Premium UI |
| Leaderboard data | Stub | `leaderboard.ts` | 7 hardcoded players |
| Friends | Stub | `FriendsScreen.tsx` | ComingSoonScreen |
| Premium | Stub | `PremiumScreen.tsx` | ComingSoonScreen |
| Pro deck IAP | Stub | `DeckPromoBanner` | No purchase flow |
| Capacitor Android | Complete | `android/` | Scaffolded |
| Capacitor iOS | Complete | `ios/` | Scaffolded |
| Automated tests | Stub | `example.test.ts` | No game logic tests |
| Backend / API | Planned | — | Not in repository |
| Analytics | Planned | — | Not in repository |
| Rambler Engine | Planned — research only | — | Not in repository |
| PWA / service worker | Planned | — | Not in repository |
| CI/CD | Planned | — | Not in repository |

---

## Rebuild priority tiers

### Tier 1 — Minimum viable game (must have)

- Routes: `/`, `/game`, `/end`, `/settings`
- `phrases.ts`, `GameScreen`, scoring, timer, validation
- `profile.ts` (coins), `scores.ts`, `GameContext`

### Tier 2 — Full local product (current app)

- All Tier 1 + badges, daily streak, daily challenge, categories, history, achievements, profile, leaderboard UI (stub data OK)

### Tier 3 — Phase 2 / 3 (do not build for Phase 1 milestone)

- Friends, Premium, real online leaderboard, backend, analytics
- **Bluetooth party mode** (Phase 3)

---

*Next: [08 — Rebuild guide](./08_REBUILD_GUIDE.md)*
