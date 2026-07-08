# Game Design — Anu-Sabi

> Core loop, systems, and the **why** behind each one.  
> **Last updated:** 2026-07-08  
> **Technical reference:** [04 — Game rules](../developer/04_GAME_RULES.md) (for exact formulas)

---

## Core fantasy

You are a **decoder** — someone who hears hidden meaning inside nonsense text. The game turns language into a puzzle you solve with your ears and memory, not just your eyes.

---

## Core gameplay loop

```
See gibberish → Read aloud (optional but intended) → Type answer → Feedback → Next phrase
```

| Step | Player experience | Design intent |
|------|-------------------|---------------|
| See gibberish | Large text in speech bubble | Make the puzzle the hero; minimize UI noise |
| Read aloud | Prompted by italic helper text | Activate phonetic decoding — the product's hook |
| Type answer | Single text field, submit | Low friction; familiar mobile input |
| Correct | Green flash, *"Tama!"*, points, streak up | Immediate dopamine; reinforce skill |
| Wrong | Wiggle, clear field, timer continues | Forgiving — typos shouldn't end the round |
| Timeout / skip | Answer revealed, streak resets | Teach the answer; prevent hard stops |

**Session end (10-round):** Results screen with stars, coins, optional badge unlocks → Play Again or Home.

**Why this loop:** It is learnable in one phrase, repeatable for years (500+ lines), and scales with difficulty and streak skill.

---

## Game modes

| Mode | Experience | Why it exists |
|------|------------|---------------|
| **10-round** | Fixed session, clear ending | Default for quick, complete sessions |
| **Endless** | Keeps going; pool reshuffles | For mastery players chasing high scores and endless badges |

Configurable in **Settings**.

---

## Difficulty

| Level | Timer | Who it's for |
|-------|-------|--------------|
| Easy | 45s | Learning, casual play, younger players |
| Medium | 30s | Default balance |
| Hard | 15s | Experts; unlocks hard-specific badges |

**Why three levels:** Same content, different pressure — supports "easy to learn, hard to master" without separate content pipelines.

---

## Scoring philosophy

**Points = skill under pressure, not participation.**

- Each correct answer adds points equal to the current **streak multiplier** (1×, 2×, or 3×)
- Multiplier rises with **consecutive correct answers** in the session (3+ → 2×, 5+ → 3×)
- Wrong answers don't add points but **don't break the streak** — only skip/timeout resets it

**Why streak-based scoring:** Rewards sustained accuracy, creates drama ("don't break the streak"), and makes a perfect run feel dramatically better than a scattered one.

**Best scores** are saved per mode + difficulty — personal competition without needing online servers in Phase 1.

**Stars on end screen** reflect accuracy % — emotional summary, not a currency.

**XP display:** Shown as `round(score × 0.6)` on end screen — **display only, not saved**. Likely a future progression hook; **TBD — not a designed system yet**.

---

## Hint philosophy

**Hints help you learn, not skip thinking.**

- **One hint per phrase**
- Reveals **first letter of each word** with underscores (e.g. `M____ k___`)
- Costs **50 coins** OR **1 hint token** (token spent first)

**Why first letters:** Preserves the "decode" moment — you still connect sounds to words — while unblocking stuck players.

**Why a cost:** Prevents hint spam; ties hints to economy and daily rewards (Day 3 streak grants a token).

**Known gap:** Hint token balance is not shown in game UI — players may not know they have tokens.

---

## Coins

**Role:** Soft currency for hints and streak recovery — not real money.

| Earn | Spend |
|------|-------|
| Session end: `max(10, correctCount × 10)` | Hints (50 coins) |
| Daily Streak days 1, 2, 4, 5 | Missed-day streak save (50 coins) |
| Starting balance: 500 for new players | |

**Why coins exist:** Give players agency when stuck; reward session performance; fuel daily streak economy without IAP in Phase 1.

---

## Badges (achievements)

**22 badges** — collectible proof of mastery moments.

| Category | Examples | Why |
|----------|----------|-----|
| First steps | *Uy May Tama!* (first correct) | Celebrate onboarding win |
| Streaks | *Init Na 'Yan!*, *Sindi Na!* | Reward hot streaks |
| Perfect rounds | *Perfect Ka, Boss*, *Pinoy Pride* | Peak session goals |
| Endless highs | *Walang Uwian*, *Sabi Mo Ano Master* | Long-form mastery |
| Daily loyalty | *Limang Araw!*, *Daily Legend* | Retention without XP grind |

**Rank** (Novice → Apprentice → Expert → Master) is derived from badge count — visible identity on profile and daily challenge card.

**Why badges over levels:** Moments feel memorable; collection appeals to completionists; Tagalog names reinforce cultural voice.

**Known gap:** `first-game` badge exists but may not unlock — technical debt, not design intent.

---

## Daily Streak (login rewards)

**Separate from in-game answer streak.**

5-day cycle:

| Day | Reward | Purpose |
|-----|--------|---------|
| 1 | 20 coins | Low-friction return |
| 2 | 30 coins | Build habit |
| 3 | Hint token | Tie retention to gameplay |
| 4 | 50 coins | Mid-cycle boost |
| 5 | Mystery chest | Celebration; variable reward |

**Why a 5-day cycle:** Short enough to feel achievable; long enough to build habit; Day 5 creates a mini-event.

**Missed day:** Dialog offers save (coins or streak freeze) — reduces frustration without eliminating stakes.

---

## Daily Challenge (games played today)

Tracks **games completed today** toward a goal (default: **3**).

Shown on home **Daily Challenge card** with rank, coins, and progress bar.

**Why separate from login streak:** Rewards **playing**, not just opening the app — aligns with "reward skill" philosophy.

---

## Categories

| Deck | Player label | Content |
|------|--------------|---------|
| Pinoy | Pinoy | Filipino phrases |
| Movies | Maps to world pool | World / pop content |
| Mixed | Mixed | Combined shuffle |
| Funny, Songs, Love, etc. | Locked | **Stub** → Coming Soon |

**Why categories:** Let players choose identity (Pinoy pride vs world trivia) without separate apps.

---

## Skip

Reveals answer for 2 seconds, **resets streak**, no points.

**Why skip exists:** Respect player time on impossible phrases; cost is competitive score, not currency.

---

## Sound and haptics

Toggles in Settings. Correct/wrong/timeout/badge/coin events trigger audio and vibration.

**Why:** Multi-sensory feedback makes mobile play feel tactile and satisfying.

---

## What is NOT part of core design (Phase 1)

| System | Status |
|--------|--------|
| Online PvP | Planned — Phase 2/3 |
| Real leaderboard | Stub |
| Persistent XP levels | Partial — display only |
| Procedural phrases (Rambler) | Planned — research |

---

*Next: [04 — User experience](04_USER_EXPERIENCE.md)*
