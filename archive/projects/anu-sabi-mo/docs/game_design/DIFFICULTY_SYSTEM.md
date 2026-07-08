# ⚖️ Difficulty System

> **Defines the difficulty levels, gameplay adjustments, and balancing philosophy for Anu Sabi.**

---

# Purpose

The Difficulty System determines how challenging a game session is while maintaining fair and enjoyable gameplay.

Difficulty should influence the player's experience without changing the core rules of the game.

---

# Design Philosophy

Difficulty should reward player skill rather than punish mistakes.

Each level should provide a different experience while remaining:

- Fair
- Predictable
- Consistent
- Enjoyable
- Skill-based

The objective is not to frustrate players but to encourage improvement.

---

# Current Difficulty Levels

Anu Sabi currently supports three difficulty levels.

| Difficulty | Time per Round | Intended Audience |
|------------|---------------:|-------------------|
| Easy | 45 seconds | New players |
| Medium | 30 seconds | Most players |
| Hard | 15 seconds | Experienced players |

The phrase database remains the same across all difficulties.

Only the amount of available thinking time changes.

---

# Easy

Status

✅ Implemented

### Goal

Introduce new players to the game.

### Characteristics

- Generous timer
- Low pressure
- Learning focused
- Ideal for children and casual players

Recommended for:

- First-time players
- Practice
- Accessibility
- Relaxed gameplay

---

# Medium

Status

✅ Implemented

### Goal

Provide the standard Anu Sabi experience.

### Characteristics

- Balanced timer
- Moderate pressure
- Encourages quick recognition
- Recommended default difficulty

Suitable for most players.

---

# Hard

Status

✅ Implemented

### Goal

Challenge experienced players.

### Characteristics

- Short timer
- Fast decision making
- High concentration required
- Rewards mastery

Hard mode emphasizes speed without changing gameplay mechanics.

---

# Difficulty Progression

Players are encouraged to progress naturally:

```
Easy

↓

Medium

↓

Hard
```

The transition between levels should feel achievable through practice.

---

# Gameplay Impact

Difficulty currently affects:

- Round timer

Difficulty does **not** currently affect:

- Phrase selection
- Coin rewards
- Badge eligibility
- Categories
- Core rules

This keeps the game simple and easy to understand.

---

# Future Difficulty Modifiers

Future versions may allow difficulty to influence:

- Score multiplier
- Coin rewards
- XP rewards
- Event rewards
- Achievement requirements

Example:

| Difficulty | Score Bonus | Coin Bonus | XP Bonus |
|------------|------------:|-----------:|----------:|
| Easy | x1.0 | x1.0 | x1.0 |
| Medium | x1.2 | x1.1 | x1.2 |
| Hard | x1.5 | x1.25 | x1.5 |

These bonuses should encourage progression without making lower difficulties feel unrewarding.

---

# Accessibility

Difficulty should never become a barrier.

Players should always be free to:

- Lower difficulty
- Practice
- Improve gradually

The game should celebrate progress rather than punish failure.

---

# Future Difficulty Levels

Additional levels may be introduced if justified.

Examples include:

---

## Expert

Status

🟡 Planned

Potential features:

- 10 second timer
- Higher score multiplier
- Advanced badge opportunities

---

## Master

Status

🟡 Future

Potential features:

- Extremely short timer
- Elite progression
- Tournament eligibility

These levels should only be added if they provide meaningful gameplay differences.

---

# Dynamic Difficulty (Future)

Future updates may support adaptive difficulty.

Possible examples:

- Adjust timer based on player performance
- Practice mode recommendations
- Personalized challenge suggestions

Adaptive systems should always remain optional.

---

# Balancing Principles

Difficulty should:

- Increase challenge
- Preserve fairness
- Avoid randomness
- Reward improvement
- Remain easy to understand

Changing difficulty should never alter the core identity of the game.

---

# Success Metrics

A well-balanced difficulty system should encourage players to:

- Move from Easy to Medium
- Eventually master Hard
- Feel challenged without frustration
- Continue improving over time

---

# Future Expansion

Potential future additions include:

- Seasonal difficulty modifiers
- Event-specific difficulties
- Accessibility presets
- Challenge-specific timers
- Multiplayer difficulty balancing

These additions should integrate cleanly with the existing difficulty framework.

---

# Related Documents

- GAME_RULES.md
- GAME_MODES.md
- SCORING_SYSTEM.md
- BALANCING.md
- PROGRESSION.md

---

# Revision History

## Version 1.0.0

- Documented the three current difficulty levels.
- Defined the balancing philosophy behind the difficulty system.
- Established a framework for future difficulty expansion and adaptive gameplay.