# 🎮 Game Design Documentation

> **Defines the gameplay systems, mechanics, progression, balancing, and player experience for Anu Sabi.**

---

# Purpose

The Game Design documentation describes **how Anu Sabi plays**.

While the Architecture documentation explains **how the software is built**, this section explains **how the game is designed**.

It serves as the primary reference for gameplay decisions, balancing, and future feature development.

---

# Design Philosophy

Anu Sabi is built around a simple but engaging concept:

> **Decode a scrambled phrase before time runs out.**

The experience is designed to be:

- Easy to learn
- Challenging to master
- Fast-paced
- Rewarding
- Replayable
- Offline-first

Every new gameplay feature should reinforce these principles.

---

# Core Gameplay Pillars

The game is built around the following pillars:

### Accessibility

Players should understand the game within seconds.

---

### Skill-Based Progression

Success should come from improving recognition, vocabulary, and pattern matching rather than luck.

---

### Short Play Sessions

A complete game should comfortably fit into a short break while encouraging "just one more game."

---

### Meaningful Progress

Every session should contribute toward player progression through coins, badges, ranks, streaks, or future XP systems.

---

### Offline Enjoyment

Core gameplay should remain fully playable without an internet connection.

---

# Scope

This documentation covers:

- Core rules
- Gameplay loop
- Scoring
- Difficulty
- Categories
- Phrase generation
- Hints
- Rewards
- Progression
- Balancing

It does **not** cover implementation details, which belong in the Architecture documentation.

---

# Document Structure

| Document | Purpose |
|----------|---------|
| GAME_LOOP.md | Overall gameplay flow |
| GAME_RULES.md | Rules and objectives |
| GAME_MODES.md | Available game modes |
| SCORING_SYSTEM.md | Score calculation |
| DIFFICULTY_SYSTEM.md | Difficulty levels |
| CATEGORY_SYSTEM.md | Phrase categories |
| PHRASE_SYSTEM.md | Phrase content and selection |
| HINT_SYSTEM.md | Hint mechanics |
| COIN_SYSTEM.md | Economy and rewards |
| XP_SYSTEM.md | Experience system (future) |
| BADGE_SYSTEM.md | Achievement system |
| RANK_SYSTEM.md | Player ranks |
| DAILY_STREAK.md | Login streak system |
| DAILY_CHALLENGE.md | Daily objectives |
| PROGRESSION.md | Long-term progression |
| BALANCING.md | Design balancing principles |

---

# Guiding Principle

Gameplay systems should remain:

- Consistent
- Fair
- Easy to understand
- Rewarding
- Expandable

Complexity should emerge from combining simple systems rather than introducing unnecessary mechanics.

---

# Related Documentation

- Product Documentation
- Architecture Documentation
- Future Content Documentation

---

# Revision History

## Version 1.0.0

- Created the Game Design documentation index.
- Defined the scope and philosophy for all gameplay-related documents.