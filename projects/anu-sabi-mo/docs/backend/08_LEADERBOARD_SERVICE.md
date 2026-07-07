# Leaderboard Service

> **Defines the architecture, ranking algorithms, synchronization model, validation strategy, and future competitive features of the Anu Sabi Leaderboard Service.**

---

# Purpose

The Leaderboard Service manages competitive rankings across the Anu Sabi platform.

It provides players with a fair, secure, and scalable system for comparing performance while preserving the Offline First philosophy.

Gameplay always occurs locally, while rankings are synchronized with cloud services.

---

# Design Goals

The Leaderboard Service should be:

- Fair
- Secure
- Offline First
- Scalable
- Event Driven
- Resistant to Cheating
- Extensible

Competitive integrity is prioritized over synchronization speed.

---

# Current Implementation

The current application includes a local leaderboard.

Current characteristics:

- Hardcoded leaderboard entries
- Local best score display
- No online ranking
- No cloud synchronization
- No player accounts
- No seasonal rankings

The leaderboard is currently a user interface placeholder.

---

# Target Architecture

```
React Client

↓

SQLite

↓

Sync Engine

↓

Leaderboard API

↓

Leaderboard Service

↓

Neon PostgreSQL
```

Only validated scores are published to online leaderboards.

---

# Responsibilities

The Leaderboard Service manages:

- Global rankings
- Friends rankings
- Seasonal rankings
- Daily rankings
- Weekly rankings
- Event leaderboards
- Score validation
- Rank calculation
- Tie resolution

Gameplay itself remains the responsibility of the client.

---

# Ranking Types

Future leaderboard categories include:

## Global

Worldwide rankings.

---

## Friends

Rankings among connected friends.

---

## Daily

Resets every day.

---

## Weekly

Resets every week.

---

## Monthly

Long-term recurring competition.

---

## Seasonal

Special event rankings.

---

## Event

Limited-time competitions.

---

# Ranking Scope

Separate leaderboards may exist for:

- Overall Score
- Endless Mode
- 10 Round Mode
- Easy
- Medium
- Hard
- Pinoy Category
- World Category
- Mixed Category

Separating rankings improves competitive fairness.

---

# Score Submission

Completed games follow this flow:

```
Game Completed

↓

SQLite

↓

Sync Queue

↓

Leaderboard API

↓

Validation

↓

Leaderboard Database
```

Invalid scores are rejected before publication.

---

# Validation

Every submitted score should undergo validation.

Examples include:

- Session duration
- Maximum possible score
- Difficulty consistency
- Duplicate submission detection
- Timestamp validation
- Version compatibility

Suspicious submissions may be flagged for review.

---

# Anti-Cheat Strategy

The Leaderboard Service should detect:

- Impossible scores
- Modified clients
- Duplicate uploads
- Replay attacks
- Timestamp manipulation
- Automated gameplay

Validation protects competitive integrity.

---

# Ranking Algorithm

Primary ranking:

```
Highest Score
```

Tie breakers may include:

1. Shortest completion time
2. Earlier submission
3. Highest accuracy

Tie-breaking rules should remain consistent across all platforms.

---

# Seasonal Rankings

Seasonal leaderboards operate independently.

Each season maintains:

- Start Date
- End Date
- Season ID
- Rewards
- Rank History

Historical seasons remain archived after completion.

---

# Friends Leaderboards

Friends rankings are filtered using the authenticated player's friend list.

```
Player

↓

Friend List

↓

Leaderboard Filter

↓

Rankings
```

Friend data is maintained separately from leaderboard data.

---

# Event Leaderboards

Future events may define custom rankings.

Examples:

- Holiday Event
- Community Challenge
- Anniversary Event
- Weekly Tournament

Each event may use independent scoring rules.

---

# Cached Rankings

Frequently accessed leaderboards may be cached locally.

SQLite stores:

- Recent rankings
- Player position
- Friends rankings
- Cached metadata

Cached data improves offline browsing.

---

# Synchronization

Ranking updates occur asynchronously.

```
SQLite

↓

Sync Engine

↓

Leaderboard Service

↓

Updated Rankings

↓

Client Refresh
```

Gameplay continues regardless of synchronization status.

---

# Privacy

Players may control leaderboard visibility.

Possible settings include:

- Public
- Friends Only
- Private

Private profiles should not appear in public rankings.

---

# Scalability

The Leaderboard Service should support:

```
Hundreds

↓

Thousands

↓

Millions

↓

Global Competition
```

Leaderboard queries should remain performant regardless of player count.

---

# Data Retention

Historical ranking data may be retained for:

- Seasonal archives
- Analytics
- Player history
- Achievement verification

Retention policies may evolve over time.

---

# Notifications

Leaderboard events may trigger notifications.

Examples include:

- New Personal Best
- Top 100 Entry
- Friend Overtaken
- Season Ending Soon
- Reward Available

Notifications are managed by the Notification Service.

---

# Analytics Integration

Leaderboard activity provides valuable analytics.

Examples include:

- Rank progression
- Score distribution
- Popular game modes
- Difficulty trends
- Seasonal engagement

Analytics should aggregate data without exposing unnecessary personal information.

---

# Future Enhancements

Potential future additions include:

- Regional Rankings
- Country Rankings
- Team Leaderboards
- Clan Competitions
- Live Events
- Verified Players
- Replay Verification
- AI-Assisted Cheat Detection

These features should integrate without redesigning the service.

---

# Relationship to Other Services

The Leaderboard Service interacts with:

- Authentication Service
- User Profile Service
- Game Service
- Analytics Service
- Notification Service
- Sync Engine

Each service maintains clear ownership of its respective data.

---

# Related Documents

- 05_AUTHENTICATION.md
- 06_USER_PROFILES.md
- 07_GAME_SERVICES.md
- 10_ANALYTICS_SERVICE.md
- 11_SYNC_ENGINE.md
- 12_NOTIFICATION_SERVICE.md

---

# Revision History

## Version 1.0.0

- Defined the Leaderboard Service architecture.
- Documented ranking types, score validation, synchronization model, anti-cheat strategy, ranking algorithms, seasonal competitions, privacy controls, analytics integration, scalability, and future competitive features.