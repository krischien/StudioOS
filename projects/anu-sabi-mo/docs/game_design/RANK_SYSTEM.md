# 👑 Rank System

> **Defines how player ranks are earned, displayed, and used to recognize long-term achievement in Anu Sabi.**

---

# Purpose

The Rank System represents a player's overall accomplishments within Anu Sabi.

Ranks provide:

- Long-term goals
- Visible progression
- Player identity
- Recognition
- Motivation

Ranks should reflect achievement rather than simple playtime.

---

# Design Philosophy

Ranks are intended to represent **mastery**, not popularity.

A player's rank should communicate:

- Experience
- Dedication
- Achievement

Ranks should be difficult to earn but easy to understand.

---

# Current Implementation

Status

✅ Implemented

The current application derives a player's rank from the number of unlocked badges.

Current rank progression:

| Rank | Status |
|------|--------|
| Novice | ✅ Implemented |
| Apprentice | ✅ Implemented |
| Expert | ✅ Implemented |
| Master | ✅ Implemented |

Rank updates automatically as badge milestones are reached.

---

# Rank Progression

Current progression flow:

```
Play Games

↓

Unlock Badges

↓

Badge Count Increases

↓

Rank Recalculated

↓

Profile Updated
```

Ranks are automatically determined by badge progress.

Players do not manually choose their rank.

---

# Current Rank Characteristics

### Novice

Entry rank.

Awarded to every new player.

Focus:

- Learning
- Exploration
- First achievements

---

### Apprentice

Represents growing familiarity with the game.

Players begin unlocking multiple achievements and becoming more consistent.

---

### Expert

Awarded to experienced players who have demonstrated dedication across multiple gameplay systems.

---

### Master

Current highest rank.

Represents exceptional long-term achievement through badge completion.

Master players have demonstrated consistent commitment to the game.

---

# Rank Display

Ranks are displayed in:

- Player Profile
- Leaderboards (future)
- Friend Lists (future)
- Multiplayer (future)

Ranks should always be clearly visible as part of a player's identity.

---

# Rank Benefits

Current benefits:

- Visual recognition
- Profile progression

Future benefits may include:

- Cosmetic profile frames
- Exclusive titles
- Celebration effects
- Avatar customization
- Seasonal recognition
- Theme unlocks

Ranks should not provide gameplay advantages.

---

# Rank vs XP

The Rank System and XP System serve different purposes.

| Rank | XP |
|------|----|
| Represents achievements | Represents accumulated experience |
| Badge-driven | Gameplay-driven |
| Changes infrequently | Increases continuously |
| Major milestone | Continuous progression |

Keeping these systems separate allows each to provide a unique sense of accomplishment.

---

# Future Rank Requirements

Future versions may include additional requirements such as:

- Total XP
- Badge completion
- Challenge completion
- Event participation
- Seasonal objectives

Badges should remain the primary requirement unless a redesign is intentionally approved.

---

# Prestige System

Status

🟡 Planned

Future players may unlock Prestige after reaching the highest rank.

Example:

```
Master

↓

Prestige I

↓

Prestige II

↓

Prestige III

↓

...
```

Prestige should reward long-term dedication without resetting meaningful accomplishments.

---

# Seasonal Ranks

Status

🟡 Future

Seasonal ranks may be introduced for competitive events.

Examples:

- Bronze
- Silver
- Gold
- Platinum
- Diamond

Seasonal ranks should exist independently from permanent profile ranks.

---

# Rank Balance

Ranks should:

- Require meaningful effort
- Encourage exploration
- Reward long-term engagement
- Remain prestigious

Players should feel proud when earning a new rank.

---

# Accessibility

The ranking system should support different play styles.

Players should be able to progress through:

- Daily play
- High scores
- Exploration
- Badge collection
- Challenge completion

There should be multiple paths toward long-term progression.

---

# Future Expansion

Possible future additions include:

- Prestige levels
- Seasonal ladders
- Regional rankings
- Global rankings
- Guild ranks
- Tournament titles
- Developer titles
- Community contributor ranks

These additions should complement the permanent ranking system rather than replace it.

---

# Design Goals

The Rank System should remain:

- Meaningful
- Prestigious
- Fair
- Transparent
- Expandable

Ranks should symbolize accomplishment while motivating players to continue progressing.

---

# Related Documents

- BADGE_SYSTEM.md
- XP_SYSTEM.md
- PROGRESSION.md
- BALANCING.md

---

# Revision History

## Version 1.0.0

- Documented the current badge-based ranking system.
- Defined the four implemented player ranks.
- Established a roadmap for future prestige, seasonal, and expanded ranking systems while preserving badges as the foundation of permanent rank progression.