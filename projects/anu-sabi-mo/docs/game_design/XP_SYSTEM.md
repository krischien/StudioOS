# ⭐ XP System

> **Defines how Experience Points (XP) are earned, accumulated, and used to support long-term player progression in Anu Sabi.**

---

# Purpose

The XP System measures a player's long-term progress.

Unlike coins, XP is not intended to be spent.

Instead, XP represents:

- Experience
- Dedication
- Growth
- Mastery

XP provides players with a sense of continuous achievement across many game sessions.

---

# Design Philosophy

XP rewards participation and consistent improvement.

Players should earn XP by:

- Playing regularly
- Completing games
- Improving performance
- Participating in events
- Completing challenges

XP should never be purchasable.

Progress should always be earned through gameplay.

---

# Current Implementation

Status

🟡 Partially Implemented

Current application behavior:

- XP is displayed on the End Screen.
- XP is **not currently persisted** between sessions.
- XP does not currently affect progression.

Future versions will persist XP as part of the player's profile.

---

# XP Lifecycle

```
Complete Session

↓

Calculate XP

↓

Award XP

↓

Save Total XP

↓

Check Level Progress

↓

Unlock Rewards
```

---

# Earning XP

Future XP may be awarded from:

- Completing games
- Correct answers
- High scores
- Maintaining combos
- Daily Challenges
- Daily Streaks
- Weekly Challenges
- Badge unlocks
- Seasonal Events
- Community Events

XP should reward active participation rather than passive play.

---

# Future XP Bonuses

Additional XP may be granted for:

- Perfect games
- High accuracy
- Hard difficulty
- Endless mode milestones
- Event participation
- Limited-time bonuses

Bonus XP should encourage players to improve their skills without creating unfair progression gaps.

---

# XP Storage

XP should become a permanent part of the player's profile.

Future profile structure may include:

```
Profile

↓

Total XP

↓

Current Level

↓

XP Toward Next Level
```

XP should always persist between sessions.

---

# Levels

XP supports future player levels.

Example progression:

```
Level 1

↓

Level 2

↓

Level 3

↓

...

↓

Maximum Level (future)
```

Levels represent overall player experience rather than gameplay skill.

---

# Level Rewards

Future level rewards may include:

- Coins
- Cosmetic items
- Profile customization
- Avatars
- Themes
- Titles
- Celebration effects
- Exclusive badges

Level rewards should celebrate progression without providing gameplay advantages.

---

# XP vs Coins

XP and Coins serve different purposes.

| XP | Coins |
|----|-------|
| Measures progress | Virtual currency |
| Cannot be spent | Can be spent |
| Permanent progression | Economy system |
| Unlocks levels | Purchases optional content |

Separating these systems keeps progression and economy balanced.

---

# XP Balance

XP progression should feel:

- Steady
- Rewarding
- Predictable

Players should notice progress during every play session.

Higher levels may require more XP to achieve.

---

# Offline Support

XP should function completely offline.

Players should always be able to:

- Earn XP
- Save XP
- Level up

without requiring an internet connection.

Future online synchronization should preserve player progress across devices.

---

# Future Features

Potential future additions include:

- Prestige Levels
- Seasonal XP
- Battle Pass progression
- Event XP
- Team XP
- Friend XP comparisons
- Daily XP bonuses
- Weekly XP caps (if required)

These systems should extend the core XP model without replacing it.

---

# Security

Current implementation stores progress locally.

Future online synchronization should include:

- Secure persistence
- Server validation
- Backup and recovery
- Conflict resolution

Player progress should remain accurate and protected.

---

# Design Goals

The XP System should always be:

- Fair
- Permanent
- Rewarding
- Transparent
- Expandable
- Offline-first

XP should provide a satisfying sense of long-term growth while encouraging continued play.

---

# Related Documents

- COIN_SYSTEM.md
- BADGE_SYSTEM.md
- RANK_SYSTEM.md
- PROGRESSION.md
- BALANCING.md

---

# Revision History

## Version 1.0.0

- Defined the long-term Experience Point (XP) architecture.
- Documented the current implementation status.
- Established future support for levels, rewards, progression, and persistent player growth.