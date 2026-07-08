# 09 — Technical Debt

> Known gaps, stubs, and inconsistencies. Preserve or fix intentionally when assuming/rebuilding.  
> **Last updated:** 2026-07-08

---

## Stub implementations

| Item | Location | Behavior |
|------|----------|----------|
| Leaderboard players | `leaderboard.ts` | `STUB_GLOBAL` — 7 hardcoded entries |
| Friends tab | `LeaderboardScreen` | Always `FriendsEmptyState` |
| Friends screen | `FriendsScreen.tsx` | `ComingSoonScreen` |
| Premium screen | `PremiumScreen.tsx` | `ComingSoonScreen` |
| Locked decks | `decks.ts` | `playable: false` → `/coming-soon` |
| Deck promo | `DeckPromoBanner.tsx` | Static; no IAP handler |
| Vitest test | `example.test.ts` | `expect(true).toBe(true)` |

---

## Known gaps (code exists, wiring incomplete)

| Gap | Location | Detail |
|-----|----------|--------|
| `first-game` badge | `badges.ts` | Defined in `ALL_BADGES` but never unlocked in `checkAndUnlockBadges()` |
| Hint token count | `HintSkipRow.tsx` | Tokens work in logic; not displayed in game UI |
| XP persistence | `EndScreen.tsx` | XP calculated and shown; never saved |
| `index.html` metadata | `index.html` | TODO comments for title/og tags |

---

## Duplicate / overlapping logic

| Issue | Location |
|-------|----------|
| Three "streak" concepts | `GameScreen` (answer streak), `profile.dailyStreak` (activity), `dailyStreak.ts` (login rewards) |
| Legacy `lastDailyRewardClaim` | `profile.ts` — unused field |
| Duplicate endless badge checks | `badges.ts` lines 214–220 (`endless-100`, `endless-200` checked twice) |
| `dailyStreak` vs `streakCycleDay` | Both on profile; different meanings |

---

## Orphan / dead code

| Item | Location |
|------|----------|
| `CircularTimer` | `components/CircularTimer.tsx` — unused; `PremiumCircularTimer` used instead |
| `Index.tsx` | Re-exports HomeScreen; router uses `HomeScreen` directly |
| `HomeBottomNav` / `HomeTopBar` | Thin re-exports of premium components |

---

## Hardcoded constants (rebuild reference)

| Value | Location |
|-------|----------|
| Default coins: 500 | `profile.ts` |
| Daily goal: 3 games | `profile.ts` |
| Hint cost: 50 | `GameScreen.tsx`, `HintSkipRow.tsx` |
| History max: 50 | `gameHistory.ts` |
| Streak rewards 20/30/50 coins | `dailyStreak.ts` |
| Leaderboard fallback score: 1920 | `leaderboard.ts` |

---

## TypeScript / tooling

| Item | Location |
|------|----------|
| `strictNullChecks: false` | `tsconfig.json` |
| CSS `@import` order warning | `index.css` |
| No CI/CD | Repository root |
| No `.env` / env validation | — |

---

## Content quality

| Item | Location |
|------|----------|
| Phrase id 12 quality | `phrases.ts` — gibberish/answer mismatch noted in `NEXT_STEPS.md` |

---

## Planned — not in repository

Do not mistake documentation or UI stubs for implemented systems:

- Backend API, auth, cloud save
- Real online leaderboard
- Analytics / crash reporting
- Rambler Engine
- Play Store / App Store release pipeline (TBD — requires confirmation)

---

## When assuming the project

**Recommended first fixes** (from `NEXT_STEPS.md` and audit):

1. Wire `first-game` badge unlock
2. Show hint token count in game UI
3. Update `index.html` metadata
4. Add tests for `validateAnswer`, `getMultiplier`, badge logic
5. Consolidate streak field naming in profile (larger refactor)

---

*Return to: [Developer Bible](../DEVELOPER_BIBLE.md)*
