# User Profiles

> **Defines the structure, lifecycle, ownership, synchronization, and management of player profiles within the Anu Sabi backend ecosystem.**

---

# Purpose

User Profiles store player-specific information that personalizes the Anu Sabi experience across devices while supporting cloud synchronization and future online features.

Profiles are distinct from authentication.

Authentication answers:

> Who is the player?

Profiles answer:

> What belongs to the player?

---

# Design Goals

User profiles should be:

- Offline First
- Synchronizable
- Secure
- Extensible
- Portable
- Versioned
- Privacy-conscious

Profile evolution should not require redesigning the authentication system.

---

# Current Implementation

Currently, profiles exist only locally.

```
React

↓

localStorage

↓

Profile Object
```

Current profile contains:

- Display Name
- Coins
- Rank
- Daily Streak
- Daily Progress
- Login History
- Hint Tokens
- Badges
- Best Scores
- Game History
- Settings

Each installation has exactly one local profile.

---

# Target Architecture

```
Player

↓

Authentication

↓

User Profile

↓

SQLite

↓

Sync Engine

↓

Neon PostgreSQL
```

The profile becomes available across all authenticated devices.

---

# Profile Ownership

Each authenticated player owns exactly one cloud profile.

```
User

↓

Profile

↓

Gameplay Data

↓

Statistics

↓

Achievements
```

The User ID permanently links the account and profile.

---

# Profile Components

A profile may include:

## Identity

- User ID
- Display Name
- Avatar
- Preferred Language
- Country (optional)
- Time Zone

---

## Progress

- Level
- Rank
- XP
- Coins
- Unlocks
- Achievements
- Daily Streak
- Login Statistics

---

## Gameplay

- Best Scores
- Game History
- Favorite Categories
- Difficulty Preferences
- Hint Usage
- Session Statistics

---

## Preferences

- Theme
- Sound
- Haptics
- Accessibility
- Notification Preferences
- Privacy Settings

---

## Cloud Metadata

- Profile Version
- Last Sync
- Last Login
- Devices
- Sync Status

---

# Profile Lifecycle

```
Guest Profile

↓

Account Registration

↓

Cloud Profile

↓

Synchronization

↓

Continuous Updates
```

Guest progress should migrate automatically into the cloud profile.

---

# Local Storage

Offline devices maintain a local SQLite copy.

```
SQLite

↓

Gameplay

↓

Sync Queue

↓

Cloud Profile
```

SQLite remains the active gameplay database.

---

# Synchronization

Profile synchronization should include:

- Coins
- XP
- Achievements
- Best Scores
- Statistics
- Settings
- Preferences

Synchronization should occur automatically whenever connectivity becomes available.

---

# Conflict Resolution

Different profile fields may use different strategies.

Examples:

| Data | Strategy |
|------|----------|
| Display Name | Last Write Wins |
| Coins | Server Validation |
| Achievements | Merge |
| Statistics | Aggregate |
| Settings | Last Write Wins |
| Login History | Merge |

Each field should define its own synchronization behavior.

---

# Profile Versioning

Profiles should contain an internal version number.

Example:

```
Profile Version

↓

Migration

↓

Updated Profile
```

Versioning simplifies future schema evolution.

---

# Profile Schema

A simplified future model:

```text
Profile
 ├── Identity
 ├── Progress
 ├── Statistics
 ├── Preferences
 ├── Inventory
 ├── Social
 ├── Devices
 └── Metadata
```

Additional modules can be introduced without affecting existing clients.

---

# Inventory

Future profile inventory may include:

- Coins
- Hint Tokens
- Premium Currency
- Cosmetic Items
- Seasonal Rewards
- Collectibles

Inventory management should support transactional updates.

---

# Statistics

Profile statistics may include:

- Games Played
- Games Won
- Average Score
- Highest Score
- Longest Streak
- Favorite Category
- Accuracy Rate
- Average Completion Time

Statistics support both gameplay feedback and analytics.

---

# Social Data

Future profile extensions may include:

- Friends
- Followers
- Teams
- Clubs
- Community Events

These remain optional and separate from core gameplay.

---

# Device Management

Profiles may maintain a list of trusted devices.

Information may include:

- Device ID
- Platform
- App Version
- Last Active
- Last Synchronization

Device management supports security and synchronization diagnostics.

---

# Privacy

Players should control profile visibility.

Possible visibility levels:

- Private
- Friends Only
- Public Leaderboards
- Fully Public

Only necessary information should be shared publicly.

---

# Security

Profile updates should require authenticated requests.

Sensitive operations should include:

- Authorization checks
- Audit logging
- Validation
- Rate limiting

Only the owning player (or authorized administrators) should modify profile data.

---

# Future Enhancements

Potential future additions include:

- Avatar customization
- Seasonal profile themes
- Reputation system
- Player titles
- Collections
- Cross-game StudioOS profile
- Cloud inventory
- Achievement showcase

The profile model is intentionally extensible.

---

# Relationship to StudioOS

The User Profile architecture should align with the broader StudioOS ecosystem.

Future StudioOS applications may share:

- Universal User ID
- Shared Identity
- Global Avatar
- Notification Preferences
- Device Registry

Each application maintains its own domain-specific profile while sharing a common identity layer.

---

# Related Documents

- 05_AUTHENTICATION.md
- 07_GAME_SERVICES.md
- 08_LEADERBOARD_SERVICE.md
- 10_ANALYTICS_SERVICE.md
- 11_SYNC_ENGINE.md
- 13_ADMIN_PORTAL.md
- Security Package

---

# Revision History

## Version 1.0.0

- Defined the user profile architecture.
- Documented profile lifecycle, ownership, synchronization, schema evolution, conflict resolution, inventory, statistics, privacy, and StudioOS integration.