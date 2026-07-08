# 🔄 Game Loop

> **Defines the core gameplay loop that drives player engagement in Anu Sabi.**

---

# Purpose

The Game Loop describes the complete cycle of player interaction, from launching the game to starting the next session.

Every gameplay mechanic, reward, and progression system should support or enhance this loop.

---

# Design Philosophy

Anu Sabi is designed around **short, rewarding gameplay sessions**.

A single session should:

- Start quickly
- Be easy to understand
- Challenge the player's recognition skills
- Reward progress
- Encourage another round

The ideal player experience is:

> "Just one more game."

---

# Core Gameplay Loop

```text
Launch Game

↓

Home Screen

↓

Choose Category

↓

Choose Game Mode

↓

Choose Difficulty

↓

Start Game

↓

Decode Phrases

↓

Answer Before Time Runs Out

↓

Earn Score

↓

Receive Rewards

↓

Update Progress

↓

Play Again
```

This loop forms the foundation of every gameplay system.

---

# Gameplay Stages

## 1. Launch

The player opens Anu Sabi.

The application:

- Loads profile
- Loads settings
- Loads progression
- Restores streak information
- Checks daily rewards

The player arrives at the Home Screen.

---

## 2. Preparation

The player chooses:

- Category
- Difficulty
- Game Mode

Current options include:

Categories

- Pinoy
- World
- Mixed

Modes

- 10 Round
- Endless

Difficulty

- Easy
- Medium
- Hard

These selections determine the upcoming session.

---

## 3. Gameplay

Each round follows the same pattern:

```text
Display Scrambled Phrase

↓

Player Reads Phrase

↓

Player Decodes Phrase

↓

Enter Answer

↓

Validate Answer
```

If correct:

- Award points
- Increase combo/streak
- Continue

If incorrect or skipped:

- Reveal answer (when applicable)
- Reset combo
- Continue

Gameplay repeats until the selected mode ends.

---

# Round Flow

Each round consists of:

```text
Generate Phrase

↓

Display Phrase

↓

Start Timer

↓

Player Thinks

↓

Submit Answer

↓

Validate

↓

Score

↓

Next Round
```

The player always receives immediate feedback before continuing.

---

# End of Session

When the game mode ends:

The application calculates:

- Final score
- Correct answers
- Accuracy
- Coins earned
- Badges unlocked
- Best score
- History entry

The player is then shown the End Screen.

---

# Reward Phase

The reward phase reinforces progression.

Possible rewards include:

- Coins
- Badge unlocks
- Rank progression
- Daily Challenge progress
- Daily Streak progress
- Future XP rewards

Every completed session should feel worthwhile.

---

# Progress Update

After rewards are calculated:

The application updates:

- Profile
- Statistics
- Coins
- Badges
- History
- Best scores
- Daily systems

Progress is saved before returning to gameplay.

---

# Replay Loop

The player may choose to:

- Play again
- Change difficulty
- Change category
- View achievements
- Visit profile
- Return home

The design encourages continuous engagement without forcing extended sessions.

---

# Core Gameplay Cycle

```text
Play

↓

Learn

↓

Improve

↓

Earn

↓

Unlock

↓

Play Again
```

This cycle represents the long-term engagement model of Anu Sabi.

---

# Supporting Systems

Several systems enhance the core loop without interrupting it.

These include:

- Hint System
- Coin Economy
- Badge System
- Rank System
- Daily Streak
- Daily Challenge
- Future XP System

Each system should reinforce gameplay rather than distract from it.

---

# Design Goals

The gameplay loop should remain:

- Fast
- Intuitive
- Fair
- Rewarding
- Replayable
- Offline-first

Every future feature should strengthen at least one part of this loop.

---

# Future Expansion

Future additions may extend the loop through:

- Multiplayer matches
- Ranked seasons
- Community phrase packs
- Live events
- AI-generated challenge modes
- Cooperative gameplay
- Tournament modes

These additions should complement the existing loop rather than replace it.

---

# Success Metrics

A successful gameplay loop should encourage players to:

- Complete multiple sessions
- Improve their decoding skills
- Return daily
- Unlock achievements
- Explore new categories
- Progress naturally over time

---

# Related Documents

- GAME_RULES.md
- GAME_MODES.md
- SCORING_SYSTEM.md
- PROGRESSION.md
- BALANCING.md

---

# Revision History

## Version 1.0.0

- Defined the complete gameplay loop for Anu Sabi.
- Documented each gameplay stage from launch to replay.
- Established the gameplay loop as the foundation for future systems and features.