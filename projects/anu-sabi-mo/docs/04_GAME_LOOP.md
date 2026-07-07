---
Document ID: DOC-004
Title: Game Loop
Version: 1.0.0
Status: CURRENT
Owner: Kristian Arendain
Maintainer: Ziv (ChatGPT)
Last Updated: 2026-07-07

Purpose:
Define the complete gameplay loop of Anu Sabi, from launching the game to replaying another round. This document describes the player's journey, gameplay cycle, progression loop, and retention loop.

Related Documents:
- 02_GAME_DESIGN.md
- 03_GAMEPLAY.md
- 05_UI_UX.md
- 06_ECONOMY.md
---

# 🔄 Game Loop

> *Every great game gives players one more reason to press "Play Again."*

The game loop defines the sequence of actions a player experiences while interacting with Anu Sabi. A well-designed loop creates momentum, satisfaction, and a desire to return for another session.

---

# Core Gameplay Loop

The primary gameplay loop is intentionally simple:

```text
Launch Game
      ↓
Home Screen
      ↓
Choose Game Mode
      ↓
Start Round
      ↓
Solve Phrase
      ↓
Receive Feedback
      ↓
Earn Rewards
      ↓
Next Puzzle
      ↓
Round Complete
      ↓
Results Screen
      ↓
Play Again
```

This loop should feel fast, intuitive, and rewarding.

---

# Complete Player Journey

The overall player journey extends beyond a single round:

```text
Open App
      ↓
Daily Rewards
      ↓
Home Screen
      ↓
Select Mode
      ↓
Play
      ↓
Earn Coins
      ↓
Unlock Progress
      ↓
Claim Rewards
      ↓
Check Achievements
      ↓
Return Tomorrow
```

This broader loop encourages long-term engagement while keeping individual sessions short.

---

# Round Lifecycle

Each game round follows the same internal sequence.

## 1. Round Start

The player enters a game mode.

The game prepares:

- Puzzle
- Timer
- Current score
- Available hints

---

## 2. Puzzle Phase

The player is presented with:

- An incomplete word or phrase
- Any available clues
- Remaining time
- Hint options (if applicable)

The interface should minimize distractions and keep the puzzle as the focal point.

---

## 3. Decision Phase

The player chooses to:

- Submit an answer
- Use a hint
- Skip (if allowed)

The game immediately evaluates the action.

---

## 4. Feedback Phase

Immediate feedback reinforces the player's action.

Examples include:

- Correct answer animation
- Incorrect answer notification
- Updated score
- Remaining time
- Coin gain
- Badge progress

Feedback should be instant and satisfying.

---

## 5. Transition Phase

After feedback:

- The next puzzle loads.
- Progress indicators update.
- The timer continues (if applicable).

The transition should feel seamless with minimal downtime.

---

## 6. Round Completion

When the round ends:

The player sees:

- Final score
- Correct answers
- Coins earned
- Badges unlocked
- Streak progress
- Personal records (if achieved)

The summary should celebrate accomplishments and encourage another session.

---

# Progression Loop

Progression exists outside individual rounds.

```text
Play
 ↓
Earn Coins
 ↓
Unlock Rewards
 ↓
Gain Badges
 ↓
Increase Collection
 ↓
Play Again
```

Players should feel that every session contributes to long-term progress.

---

# Retention Loop

Retention encourages players to return regularly.

```text
Daily Login
      ↓
Daily Streak
      ↓
Bonus Rewards
      ↓
Exclusive Content
      ↓
Return Tomorrow
```

The goal is to build habits without creating excessive pressure.

---

# Content Loop

Content expansion keeps the experience fresh.

```text
Play
 ↓
Discover New Categories
 ↓
Unlock Phrase Packs
 ↓
Encounter New Challenges
 ↓
Continue Playing
```

Replayability should come from content variety rather than constant rule changes.

---

# Reward Loop

Every completed round should provide some form of reward.

Possible rewards include:

- Coins
- Badges
- Streak progress
- Achievement progress
- Unlockable phrase packs

Even a difficult session should feel worthwhile.

---

# Emotional Journey

The intended emotional progression during a session is:

```text
Curiosity
      ↓
Focus
      ↓
Recognition
      ↓
Excitement
      ↓
Satisfaction
      ↓
Motivation
      ↓
Play Again
```

The game should consistently reinforce positive emotions and avoid frustration.

---

# Design Principles

The game loop should always:

- Minimize waiting.
- Maximize player interaction.
- Deliver immediate feedback.
- Reward consistent play.
- Encourage replay without feeling repetitive.

---

# Current Implementation

Current gameplay loop includes:

- Home screen
- Gameplay session
- Phrase solving
- Coin rewards
- Badge tracking
- Daily streaks
- Results screen

---

# Planned Enhancements

Future iterations may include:

- Weekly challenges
- Limited-time events
- Seasonal objectives
- Dynamic content rotations
- Community challenges

These additions should complement, not replace, the core gameplay loop.

---

# Success Metrics

The game loop is considered successful when:

- Players understand it immediately.
- Sessions remain under five minutes.
- Players feel rewarded after every round.
- Returning players continue progressing.
- The "Play Again" rate remains high.

---

# Related Documents

- **03_GAMEPLAY.md** — Gameplay mechanics.
- **05_UI_UX.md** — Interface and player interaction.
- **06_ECONOMY.md** — Rewards and progression.
- **09_DAILY_STREAK.md** — Retention systems.

---

# Revision History

## Version 1.0.0

- Established the official gameplay loop for Anu Sabi.
- Defined the player journey, progression loop, retention loop, and reward loop.