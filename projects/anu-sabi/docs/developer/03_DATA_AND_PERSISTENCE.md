# 03 — Data & Persistence

> Every `localStorage` key, schema, and default value. Required for rebuild parity.  
> **Last updated:** 2026-07-08  
> **Source:** `src/data/*.ts`

---

## Storage overview

All persistence uses **browser `localStorage`**. Keys are prefixed `sabi-mo-ano-`.

| Key | Module | Format |
|-----|--------|--------|
| `sabi-mo-ano-profile` | `profile.ts` | `Profile` JSON object |
| `sabi-mo-ano-settings` | `profile.ts` | `AppSettings` JSON object |
| `sabi-mo-ano-game-settings` | `gameSettingsStorage.ts` | `GameSettings` JSON object |
| `sabi-mo-ano-scores` | `scores.ts` | `Record<string, number>` |
| `sabi-mo-ano-badges` | `badges.ts` | `string[]` (unlocked badge IDs) |
| `sabi-mo-ano-game-history` | `gameHistory.ts` | `GameHistoryEntry[]` |

**No IndexedDB, SQLite, or server sync.**

---

## Profile (`sabi-mo-ano-profile`)

**Interface:** `Profile` in `src/data/profile.ts`

| Field | Type | Default | Purpose |
|-------|------|---------|---------|
| `coins` | number | `500` | In-game currency |
| `rank` | Rank | `'Novice'` | Computed from badge count; stored |
| `dailyStreak` | number | `0` | **Games-played** streak (daily activity) |
| `dailyCompleted` | number | `0` | Games completed today |
| `dailyGoal` | number | `3` | Daily Challenge target |
| `displayName` | string | `'Player'` | Shown on profile/leaderboard |
| `lastDailyRewardClaim` | string \| null | `null` | Legacy; unused |
| `lastActivityDate` | string \| null | `null` | ISO date `YYYY-MM-DD` |
| `lastStreakDate` | string \| null | `null` | ISO date for daily activity streak |
| `streakMilestonesClaimed` | number[] | `[]` | Milestone days claimed |
| `streakCycleDay` | number | `0` | Login streak cycle position (0–5) |
| `lastStreakClaimDate` | string \| null | `null` | Last Daily Streak claim date |
| `highestStreak` | number | `0` | Highest login streak reached |
| `streakCyclesCompleted` | number | `0` | Full 5-day cycles completed |
| `totalLoginDays` | number | `0` | Total distinct login days |
| `loginDates` | string[] | `[]` | ISO dates for calendar |
| `hintTokens` | number | `0` | Free hints from Daily Streak |
| `streakFreezes` | number | `1` | Missed-day freeze uses |
| `lastMissedDialogDate` | string \| null | `null` | Prevents repeat missed dialog |

### Rank computation

```typescript
// computeRank(unlockedBadgeCount)
0–2   → Novice
3–7   → Apprentice
8–13  → Expert
14+   → Master
```

### Load behavior

- `loadProfile()` merges stored JSON with defaults
- Calls `normalizeStreakOnLoad()` from `dailyStreak.ts`
- Resets `dailyCompleted` if `lastActivityDate` is not today
- Resets `dailyStreak` if `lastStreakDate` is neither today nor yesterday

---

## App settings (`sabi-mo-ano-settings`)

| Field | Type | Default |
|-------|------|---------|
| `soundEnabled` | boolean | `true` |
| `hapticsEnabled` | boolean | `true` |

---

## Game settings (`sabi-mo-ano-game-settings`)

**Interface:** `GameSettings` in `src/types/game.ts`

| Field | Type | Default | Values |
|-------|------|---------|--------|
| `category` | Category | `'mixed'` | `pinoy` \| `world` \| `mixed` |
| `mode` | Mode | `'10-round'` | `10-round` \| `endless` |
| `difficulty` | Difficulty | `'medium'` | `easy` \| `medium` \| `hard` |

Synced via `GameContext` on change.

---

## Best scores (`sabi-mo-ano-scores`)

**Format:** `{ "10-round-medium": 42, "endless-hard": 87, ... }`

**Key pattern:** `${mode}-${difficulty}`

- `saveBestScore()` only writes if new score **exceeds** previous
- Returns `true` if new personal best

---

## Badges (`sabi-mo-ano-badges`)

**Format:** JSON array of unlocked badge ID strings, e.g. `["first-correct", "streak-3"]`

- 22 badge definitions in `ALL_BADGES` (`badges.ts`)
- Stored separately from profile; rank recomputed from badge count

---

## Game history (`sabi-mo-ano-game-history`)

**Format:** Array of `GameHistoryEntry`, max **50** entries (FIFO)

| Field | Type |
|-------|------|
| `id` | string (UUID) |
| `date` | ISO datetime string |
| `mode` | Mode |
| `difficulty` | Difficulty |
| `category` | Category |
| `score` | number |
| `correctCount` | number |
| `totalRounds` | number |

Written from `EndScreen` via `saveGameResult()`.

---

## Phrase content (not localStorage)

**Location:** `src/data/phrases.ts` — compiled into bundle

| Pool | IDs | Count |
|------|-----|-------|
| Pinoy | 1–250 | 250 |
| World | 251–500 | 250 |

**Interface:**

```typescript
interface Phrase {
  id: number;
  gibberish: string;
  answer: string;
  category: 'pinoy' | 'world';
}
```

---

## Leaderboard data (stub, not persisted)

**Location:** `src/data/leaderboard.ts`

- `STUB_GLOBAL`: 7 hardcoded player entries
- User score injected from `getUserBestOverall()` across all mode/difficulty combos
- **Not stored in localStorage**

---

## Three different "streak" concepts

| Concept | Field(s) | Meaning |
|---------|----------|---------|
| **In-game answer streak** | `GameScreen` local state | Consecutive correct answers in session; drives multiplier |
| **Daily activity streak** | `profile.dailyStreak` | Days in a row player completed a game |
| **Daily login streak** | `streakCycleDay`, `lastStreakClaimDate`, etc. | 5-day reward cycle (Daily Streak feature) |

**Technical debt:** Overlapping naming — see [09 — Technical debt](./09_TECHNICAL_DEBT.md).

---

## Migration / schema evolution

No explicit migration layer. `loadProfile()` and `loadGameSettings()` **merge with defaults** on read — new fields get default values automatically.

---

*Next: [04 — Game rules](./04_GAME_RULES.md)*
