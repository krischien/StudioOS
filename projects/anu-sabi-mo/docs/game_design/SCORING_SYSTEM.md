# 🏆 Scoring System

> **Defines how players earn points, build combos, and measure performance in Anu Sabi.**

---

# Purpose

The Scoring System determines how player performance is evaluated during gameplay.

It provides:

- Immediate feedback
- Long-term goals
- Competitive comparison
- Progress tracking
- Reward calculations

The scoring system should reward skill, consistency, and quick recognition rather than luck.

---

# Design Philosophy

Good scores should reflect player ability.

The system rewards:

- Correct answers
- Fast thinking
- Consistency
- Maintaining combos
- Completing sessions

Players should always understand why they earned their score.

---

# Current Scoring Flow

```
Correct Answer

↓

Base Points

↓

Combo Bonus

↓

Running Total

↓

Final Score

↓

End Screen
```

Every correct answer contributes to the player's final score.

---

# Score Components

A player's score is composed of several elements.

## Base Score

Every correct answer awards a fixed number of points.

Current implementation uses a consistent base value for all phrases.

Future versions may allow category-specific values.

---

## Combo Bonus

Consecutive correct answers build a combo.

Higher combos increase scoring efficiency.

Current combo progression:

```
Correct

↓

Combo +1

↓

Higher Multiplier

↓

More Points
```

Missing a phrase or skipping resets the combo.

---

## Future Time Bonus

Status

🟡 Planned

Players may receive bonus points based on remaining time.

Example:

```
More Time Left

↓

Higher Bonus

↓

Higher Score
```

This rewards both accuracy and speed.

---

## Future Difficulty Bonus

Status

🟡 Planned

Harder difficulties may award additional score.

Example:

| Difficulty | Bonus |
|------------|------:|
| Easy | x1.0 |
| Medium | x1.2 |
| Hard | x1.5 |

This encourages players to challenge themselves while maintaining fairness.

---

## Future Event Bonuses

Limited-time events may introduce:

- Double score weekends
- Seasonal multipliers
- Challenge bonuses
- Tournament modifiers

These bonuses should never permanently affect player progression.

---

# Combo System

The combo system rewards consistency.

Current behavior:

```
Correct

↓

Combo +1

↓

Higher Score
```

The combo resets when:

- Timer expires
- Player skips
- Round fails

Maintaining a combo is one of the primary ways to achieve high scores.

---

# Session Score

At the end of a session the game calculates:

- Final Score
- Correct Answers
- Accuracy
- Highest Combo (future)
- Coins Earned
- Badges Unlocked

These values are displayed on the End Screen.

---

# High Scores

The application stores:

- Best score per game mode
- Best score per difficulty

Future versions may also track:

- Category records
- Weekly records
- Lifetime records
- Online rankings

---

# Accuracy

Although accuracy is displayed separately from score, it is an important performance metric.

```
Accuracy

=

Correct Answers

÷

Total Rounds
```

Future achievements and rankings may use both score and accuracy.

---

# Leaderboards

Current status

🟡 Local only

Future leaderboards may rank players by:

- Highest score
- Weekly score
- Monthly score
- Endless score
- Category score

Server-side validation should be used before accepting online scores.

---

# Rewards

Higher scores contribute to:

- Coins
- Badges
- Rank progression
- Future XP
- Daily Challenge progress

Score should remain one of the primary indicators of player performance.

---

# Balance Principles

The scoring system should:

- Reward skill
- Encourage improvement
- Avoid excessive randomness
- Remain easy to understand

A beginner should understand the scoring system within a few games.

---

# Future Expansion

Potential future additions include:

- Speed bonuses
- Perfect game bonuses
- Accuracy bonuses
- Difficulty multipliers
- Daily multipliers
- Event multipliers
- Team score (multiplayer)
- Seasonal score modifiers

These additions should enhance the existing system rather than replace it.

---

# Design Goals

The scoring system should always be:

- Fair
- Transparent
- Competitive
- Rewarding
- Consistent
- Easy to balance

Players should immediately understand how to improve their score.

---

# Related Documents

- GAME_RULES.md
- GAME_MODES.md
- DIFFICULTY_SYSTEM.md
- COIN_SYSTEM.md
- XP_SYSTEM.md
- BADGE_SYSTEM.md
- BALANCING.md

---

# Revision History

## Version 1.0.0

- Documented the official scoring architecture.
- Defined base scoring, combo mechanics, and session scoring.
- Established future support for difficulty bonuses, time bonuses, and event modifiers.
- Positioned the scoring system as the foundation for progression and competitive play.