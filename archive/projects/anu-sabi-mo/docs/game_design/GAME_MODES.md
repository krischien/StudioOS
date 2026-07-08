# 🎮 Game Modes

> **Defines the available gameplay modes, their objectives, rules, and future expansion strategy for Anu Sabi.**

---

# Purpose

This document describes every gameplay mode available in Anu Sabi.

Game Modes determine:

- Session length
- Victory conditions
- Progression
- Scoring behavior
- Replayability

Every future game mode should follow the design principles established in this document.

---

# Design Philosophy

Each game mode should provide a different way to enjoy the core gameplay without changing its fundamental mechanics.

Every mode should still revolve around:

> Decode the scrambled phrase before time expires.

The challenge changes.

The core gameplay remains consistent.

---

# Current Game Modes

## 10 Round Mode

Status

✅ Implemented

### Description

The player completes exactly ten phrases.

After the tenth phrase, the game ends automatically.

---

### Objective

Earn the highest score possible within ten rounds.

---

### Characteristics

- Fixed session length
- Suitable for quick play
- Easy to compare scores
- Recommended for most players

---

### Ends When

- 10 rounds completed

---

### Best For

- Daily play
- Leaderboards
- Casual sessions
- Beginners

---

# Endless Mode

Status

✅ Implemented

### Description

The game continues indefinitely.

The phrase pool reshuffles as needed.

There is no predefined end.

---

### Objective

Survive as long as possible while achieving the highest score.

---

### Characteristics

- Unlimited rounds
- Longer sessions
- High-score focused
- Excellent for experienced players

---

### Ends When

Currently:

- Player exits the game

Future versions may introduce optional ending conditions.

---

### Best For

- Competitive players
- Long play sessions
- High-score chasing

---

# Shared Rules

Both game modes share:

- Categories
- Difficulty settings
- Hint system
- Coin rewards
- Badge progression
- Rank progression
- Daily systems

The gameplay mechanics remain identical.

Only the session structure changes.

---

# Choosing a Game Mode

Players should choose based on their preferred experience.

| Preference | Recommended Mode |
|------------|------------------|
| Quick session | 10 Round |
| Long session | Endless |
| Daily objectives | 10 Round |
| High score | Endless |

---

# Future Game Modes

The following modes are planned or under consideration.

---

## Daily Challenge

Status

🟡 Planned

One unique challenge available each day.

Possible characteristics:

- Fixed phrase set
- Shared worldwide
- Daily leaderboard
- Bonus rewards

---

## Weekly Challenge

Status

🟡 Planned

A longer challenge refreshed every week.

May include:

- Special themes
- Exclusive badges
- Seasonal rewards

---

## Time Attack

Status

🟡 Planned

Players solve as many phrases as possible before a global timer expires.

Characteristics:

- One shared timer
- Speed focused
- Rapid gameplay

---

## Survival Mode

Status

🟡 Planned

Players continue until they fail too many phrases.

Characteristics:

- Increasing pressure
- Progressive difficulty
- Long-term endurance

---

## Zen Mode

Status

🟡 Planned

A relaxed experience without timers.

Characteristics:

- Unlimited thinking time
- Practice mode
- Accessibility friendly

---

## Hardcore Mode

Status

🟡 Planned

Designed for experienced players.

Possible rules:

- Very short timers
- No hints
- Higher rewards
- Increased badge opportunities

---

## Event Mode

Status

🟡 Planned

Limited-time gameplay based on:

- Holidays
- National events
- Community events
- Seasonal themes

---

## Multiplayer

Status

🟡 Future

Potential gameplay:

- Real-time competition
- Private rooms
- Friends
- Ranked matches
- Tournament brackets

Multiplayer should extend—not replace—the single-player experience.

---

# Mode Selection Principles

Every new mode should answer:

- What makes this mode unique?
- Why would players replay it?
- Does it respect the core gameplay loop?
- Does it preserve offline-first gameplay where appropriate?

Modes should introduce new objectives rather than entirely new mechanics.

---

# Future Mode Architecture

Future game modes should be modular.

Example:

```
Game Mode

↓

Rules

↓

Round Count

↓

Scoring

↓

Rewards

↓

Completion Condition
```

This structure allows additional modes without redesigning the game engine.

---

# Balancing Considerations

Each mode should have:

- Appropriate rewards
- Fair difficulty
- Comparable progression
- Meaningful replay value

Rewards may vary between modes but should remain balanced overall.

---

# Design Goals

Every game mode should be:

- Easy to understand
- Fun to replay
- Rewarding
- Fair
- Expandable

Players should immediately understand how a mode differs from the standard experience.

---

# Related Documents

- GAME_LOOP.md
- GAME_RULES.md
- SCORING_SYSTEM.md
- BALANCING.md
- PROGRESSION.md

---

# Revision History

## Version 1.0.0

- Documented the current 10 Round and Endless game modes.
- Defined the framework for future gameplay modes.
- Established design principles for expanding the game's mode system.