# 🔥 Daily Streak System

> **Defines how consecutive daily play is rewarded to encourage consistent engagement while respecting player schedules and maintaining a healthy progression pace.**

---

# Purpose

The Daily Streak System rewards players for returning to Anu Sabi on consecutive days.

Rather than rewarding long play sessions, the system rewards consistency.

Its goals are to:

- Encourage regular play
- Build player habits
- Reward dedication
- Increase long-term engagement
- Celebrate milestones

---

# Design Philosophy

Daily Streaks should feel rewarding without becoming stressful.

Players should look forward to returning each day, but missing a day should never feel devastating.

The system should encourage healthy engagement rather than creating fear of losing progress.

---

# Current Implementation

Status

✅ Implemented

Current features include:

- Daily login tracking
- 5-day reward cycle
- Daily rewards
- Highest streak tracking
- Login history
- Streak Freeze support
- Missed-day detection
- Cycle completion tracking

The system operates entirely offline using the player's local profile.

---

# Daily Streak Flow

```
Player Opens Game

↓

Check Current Date

↓

Already Counted Today?

↓

No

↓

Increase Streak

↓

Grant Daily Reward

↓

Save Progress
```

If today's login has already been counted, no additional reward is granted.

---

# Current Reward Cycle

The current implementation follows a repeating 5-day cycle.

```
Day 1

↓

Day 2

↓

Day 3

↓

Day 4

↓

Day 5

↓

Cycle Complete

↓

Restart Day 1
```

Completing a cycle increments the player's completed streak cycle count.

---

# Daily Rewards

Each day grants a predefined reward.

Current reward types may include:

- Coins
- Hint Tokens
- Streak Freeze refreshes
- Celebration effects

Future rewards may expand while preserving the same cycle structure.

---

# Login Tracking

The system records:

- Last login date
- Login history
- Total login days
- Highest streak
- Current streak
- Completed cycles

These values contribute to long-term player statistics.

---

# Streak Freeze

Status

✅ Implemented

Players possess a limited number of Streak Freezes.

A Streak Freeze protects the current streak if a single day is missed.

The feature exists to reduce frustration caused by unavoidable interruptions.

Future versions may allow additional freezes to be earned through gameplay.

---

# Missed Days

If a player misses a day and no Streak Freeze is available:

- Current streak resets
- Highest streak remains
- Login history remains
- Completed cycles remain

Only the active streak is affected.

---

# Highest Streak

The game permanently records the player's longest consecutive streak.

This statistic serves as a personal achievement and may contribute to future badges or leaderboards.

---

# Daily Calendar

The Daily Streak interface presents a calendar-style view of the current reward cycle.

Players can easily see:

- Current day
- Claimed rewards
- Upcoming rewards
- Progress through the cycle

The interface should remain simple and visually motivating.

---

# Future Rewards

Future reward types may include:

- XP
- Cosmetic items
- Profile decorations
- Themes
- Avatars
- Seasonal currency
- Event tickets
- Exclusive badges

Rewards should remain optional and avoid creating gameplay advantages.

---

# Seasonal Variations

Status

🟡 Planned

Future events may temporarily modify the Daily Streak system.

Examples include:

- Double rewards
- Holiday calendars
- Anniversary bonuses
- Community events

Seasonal events should complement the permanent reward cycle rather than replace it.

---

# Offline Support

The Daily Streak System is designed to function offline.

Players should be able to:

- Maintain streaks
- Claim rewards
- Complete cycles

without requiring an internet connection.

Future cloud synchronization should preserve streak integrity across devices.

---

# Anti-Abuse

Future online implementations should validate:

- Device time manipulation
- Duplicate claims
- Cross-device synchronization
- Reward integrity

Legitimate players should never lose progress due to synchronization issues.

---

# Future Expansion

Potential future additions include:

- Weekly streak rewards
- Monthly streak milestones
- Community streak events
- Guild streaks
- Family streaks
- Regional streak competitions
- Personalized streak goals

These additions should enhance the existing system while preserving its simplicity.

---

# Design Goals

The Daily Streak System should remain:

- Rewarding
- Fair
- Relaxed
- Motivating
- Offline-first
- Easy to understand

Players should feel encouraged to return regularly without feeling pressured.

---

# Related Documents

- DAILY_CHALLENGE.md
- COIN_SYSTEM.md
- XP_SYSTEM.md
- BADGE_SYSTEM.md
- PROGRESSION.md

---

# Revision History

## Version 1.0.0

- Documented the complete Daily Streak System.
- Defined the implemented 5-day reward cycle, streak tracking, Streak Freeze feature, and login history.
- Established a framework for future seasonal events, expanded rewards, and cloud synchronization.