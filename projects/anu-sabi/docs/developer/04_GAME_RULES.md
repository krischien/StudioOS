# 04 — Game Rules

> Complete gameplay specification as implemented in source. Rebuild these rules exactly for behavioral parity.  
> **Last updated:** 2026-07-08  
> **Primary source:** `src/pages/GameScreen.tsx`, `src/types/game.ts`, `src/data/*.ts`

---

## Session setup

| Setting | Source | Effect |
|---------|--------|--------|
| Category | `GameContext.category` | Phrase pool filter |
| Mode | `GameContext.mode` | 10 phrases vs endless |
| Difficulty | `GameContext.difficulty` | Timer duration |

**Phrase loading:**

```typescript
getPhrases(category, isEndless ? undefined : 10)
```

- Shuffles pool via Fisher-Yates
- `mixed` = pinoy + world combined
- Endless: full pool; reshuffles when index exceeds pool length

---

## Timer

| Difficulty | Seconds (`DIFFICULTY_TIMES`) |
|------------|------------------------------|
| easy | 45 |
| medium | 30 |
| hard | 15 |

- Countdown via `useTimer` hook
- On timeout: reveal answer (2s), reset in-game streak to 0, advance phrase
- Timer resets on each new phrase

---

## Answer validation

**Function:** `validateAnswer(input, answer)` in `phrases.ts`

Normalization (both sides):

1. Lowercase
2. Strip punctuation (keep letters, numbers, Unicode letters, spaces)
3. Collapse whitespace
4. Trim

**Case-insensitive exact match** after normalization.

---

## Game phases

| Phase | Duration | Behavior |
|-------|----------|----------|
| `playing` | Until action | Accept input, hint, skip |
| `correct-flash` | 600ms | Green flash, then advance |
| `reveal` | 2000ms | Show answer (skip/timeout), then advance |

---

## Scoring

### Per correct answer

Points added = **current streak multiplier** (not flat 1 point).

### Streak multiplier (`getMultiplier`)

| In-game consecutive correct | Multiplier |
|----------------------------|------------|
| 0–2 | 1× |
| 3–4 | 2× |
| 5+ | 3× |

- Wrong answer: streak unchanged, no points, retry allowed
- Skip or timeout: streak reset to 0, no points

### Session end

- **10-round:** After phrase 10 → navigate `/end`
- **Endless:** No automatic end; player leaves via nav (no explicit quit flow in game screen)

### Best score

`saveBestScore(mode, difficulty, score)` — persisted per mode+difficulty key.

---

## End screen rewards

**Function:** `computeRoundRewards(correctCount, totalRounds, score)`

| Reward | Formula | Persisted? |
|--------|---------|------------|
| Coins | `max(10, correctCount × 10)` | Yes — `addCoins()` |
| XP | `round(score × 0.6)` | **No** — display only |
| Stars | From accuracy % via `getStarCount()` | Display only |

**Side effects on end:**

- `saveGameResult()` → history
- `applyRoundCompletion()` → daily challenge progress, daily activity streak, rank update

---

## Hints

| Rule | Value |
|------|-------|
| Cost (coins) | 50 (`HINT_COST`) |
| Alternative | 1 hint token (spent first via `spendHintToken()`) |
| Per phrase | One hint maximum |
| Effect | `buildAnswerClue()` — first letter of each word + underscores |

**Known gap:** Hint token balance not shown in game UI.

---

## Skip

- Reveals answer for 2 seconds
- Resets in-game streak to 0
- No points awarded
- Advances to next phrase

---

## Badges (22 total)

**Unlock check:** `checkAndUnlockBadges()` during gameplay

| Trigger | Badge ID(s) |
|---------|-------------|
| First correct answer | `first-correct` |
| Streak 3 / 5 / 10 | `streak-3`, `streak-5`, `streak-10` |
| 10/10 in 10-round | `perfect-10` |
| 5+ / 8+ correct in 10-round | `10round-5`, `10round-8` |
| Perfect on easy/hard | `perfect-easy`, `perfect-hard` |
| Perfect by category | `pinoy-master`, `world-master`, `mixed-master` |
| Endless score thresholds | `endless-20`, `endless-50`, `endless-100`, `endless-200` |
| Endless 50+ on hard | `endless-hard-50` |
| Daily streak milestones | `daily-streak-3`, `daily-streak-5`, etc. (via `dailyStreak.ts`) |

**Known gap:** `first-game` badge is defined but **never unlocked** in `checkAndUnlockBadges()`.

**Known debt:** Duplicate `endless-100` and `endless-200` unlock checks in `badges.ts` (lines 214–220).

---

## Daily Streak (login rewards)

**Module:** `src/data/dailyStreak.ts`  
**Cycle length:** 5 days

| Day | Reward |
|-----|--------|
| 1 | 20 coins |
| 2 | 30 coins |
| 3 | 1 hint token |
| 4 | 50 coins |
| 5 | Mystery chest (random coins + possible badge) |

**Features:**

- Claim once per calendar day
- Missed-day dialog with save (50 coins) or streak freeze
- Monthly login calendar
- Day 5 celebration overlay
- Full page: `/daily-streak`

---

## Daily Challenge (games played)

- Default goal: **3 games per day**
- `applyRoundCompletion()` increments `dailyCompleted`
- Resets when `lastActivityDate` is not today
- Shown on `DailyChallengeCard` on home screen
- **Separate** from login Daily Streak

---

## Categories / decks

| Deck | Playable | Maps to category |
|------|----------|------------------|
| Pinoy | Yes | `pinoy` |
| Movies | Yes | `world` |
| Mixed | Yes | `mixed` |
| Funny, Songs, Love, Sports, Food, TV | No | → `/coming-soon` |

---

## Audio & haptics

**Module:** `src/utils/feedback.ts`

- Web Audio API oscillator tones
- `navigator.vibrate` when supported
- Respects `soundEnabled` / `hapticsEnabled` from settings

---

## Share

`EndScreen` uses `navigator.share` when available; else clipboard copy.

---

*Next: [05 — Routes & screens](./05_ROUTES_AND_SCREENS.md)*
