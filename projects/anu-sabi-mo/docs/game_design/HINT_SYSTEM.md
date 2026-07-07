# 💡 Hint System

> **Defines how hints assist players while maintaining challenge, fairness, and long-term game balance.**

---

# Purpose

The Hint System exists to help players overcome difficult phrases without removing the satisfaction of solving them.

Hints should:

- Reduce frustration
- Encourage learning
- Improve accessibility
- Support player progression
- Preserve challenge

Hints should assist players, not solve the puzzle for them.

---

# Design Philosophy

Hints are intended to be a strategic resource.

Players should decide:

> "Is this phrase difficult enough to spend a hint?"

The best players should use hints wisely rather than frequently.

---

# Current Hint System

Status

✅ Implemented

Players may obtain hints by using:

- Coins
- Hint Tokens

Hints are optional.

A player can complete the game without using any hints.

---

# Current Hint Type

The current hint reveals a clue that helps identify the answer without completely revealing it.

The goal is to guide the player's thinking rather than provide the solution directly.

---

# Hint Resources

Hints may consume one of several resources.

Current resources:

| Resource | Status |
|----------|--------|
| Coins | ✅ Implemented |
| Hint Tokens | ✅ Implemented |

Future resources may include:

- Daily free hints
- Achievement rewards
- Premium rewards
- Event rewards
- Friend gifts

---

# Hint Cost

Current implementation:

Hints require:

- Coins

or

- Hint Tokens

Future balancing may adjust costs based on:

- Difficulty
- Game mode
- Event modifiers
- Player progression

The system should remain fair and easy to understand.

---

# Hint Usage Flow

```
Player Needs Help

↓

Open Hint

↓

Check Available Resources

↓

Spend Resource

↓

Reveal Hint

↓

Continue Playing
```

---

# Hint Objectives

Hints should:

- Encourage learning
- Keep the player engaged
- Prevent unnecessary frustration
- Preserve satisfaction after solving

A good hint should move the player closer to the answer without eliminating the challenge.

---

# Future Hint Types

The system should support multiple hint categories.

---

## Letter Hint

Status

🟡 Planned

Reveal one additional letter.

---

## Word Hint

Status

🟡 Planned

Reveal one correctly placed word.

---

## Category Hint

Status

🟡 Planned

Reveal contextual information about the phrase.

Example:

```
Category:

Food
```

---

## Length Hint

Status

🟡 Planned

Display:

- Word count
- Character count

---

## Elimination Hint

Status

🟡 Planned

Remove incorrect possibilities when multiple answers are possible.

---

## Smart Hint

Status

🟡 Future

AI-assisted hint generation.

Potential examples:

- Context clues
- Related concepts
- Gentle guidance

The answer itself should never be revealed directly.

---

# Accessibility

Hints improve accessibility for:

- Younger players
- Casual players
- Language learners
- Players with cognitive challenges

Hints should help everyone enjoy the game without reducing overall challenge.

---

# Balancing Principles

Hints should never become:

- Mandatory
- Unlimited
- Overpowered

Players who avoid using hints should still feel rewarded.

Players who use hints should never feel punished.

---

# Reward Interaction

Hints interact with several gameplay systems.

Current interactions:

- Coin economy
- Hint Tokens

Future interactions:

- XP
- Daily Challenges
- Badges
- Events
- Premium rewards

---

# Offline Support

Hints should remain fully functional while offline.

No online services should be required for standard hint functionality.

---

# Future Expansion

Future versions may include:

- Difficulty-aware hints
- Adaptive hints
- AI-generated hints
- Event-exclusive hints
- Multiplayer spectator hints
- Educational hints
- Community-created hint packs

Every new hint should remain compatible with the existing gameplay loop.

---

# Design Goals

The Hint System should always be:

- Helpful
- Fair
- Optional
- Balanced
- Expandable
- Offline-first

Hints should increase enjoyment without reducing the satisfaction of solving a phrase.

---

# Related Documents

- GAME_RULES.md
- PHRASE_SYSTEM.md
- COIN_SYSTEM.md
- BALANCING.md

---

# Revision History

## Version 1.0.0

- Documented the Hint System.
- Defined current hint resources and future hint types.
- Established balancing principles for hint usage.
- Designed the system for future expansion while preserving fair gameplay.