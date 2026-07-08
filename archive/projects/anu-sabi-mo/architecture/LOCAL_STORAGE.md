# 💾 Local Storage Architecture

> **Documents the current persistence implementation of Anu Sabi using browser localStorage.**

---

# Purpose

This document describes how Anu Sabi currently stores persistent data.

It serves as the implementation reference for the existing persistence layer and complements `DATABASE.md`.

---

# Current Implementation

Anu Sabi currently stores all persistent player data using:

```text
Browser localStorage
```

The application is completely offline and requires no backend or database server.

All access to localStorage should occur through the Data Layer located in:

```text
src/data/
```

Components should never directly access browser storage.

Reference:

- DATA_LAYER.md

---

# Storage Philosophy

The current implementation prioritizes:

- Simplicity
- Reliability
- Offline availability
- Fast loading
- Easy migration

Data is stored as JSON objects under well-defined storage keys.

---

# Storage Keys

## sabi-mo-ano-profile

Stores the player's profile.

Contains information such as:

- Coins
- Rank
- Display name
- Daily streak
- Login history
- Hint tokens
- Progress statistics
- Gameplay preferences

Managed by:

```text
src/data/profile.ts
```

---

## sabi-mo-ano-settings

Stores application settings.

Current settings include:

- Sound enabled
- Haptic feedback enabled

Managed by:

```text
src/data/profile.ts
```

---

## sabi-mo-ano-game-settings

Stores gameplay preferences.

Includes:

- Category
- Difficulty
- Game mode

Managed by:

```text
src/data/gameSettingsStorage.ts
```

---

## sabi-mo-ano-scores

Stores the player's best scores.

Scores are grouped by:

```text
Mode + Difficulty
```

Example:

```text
10-round:medium
```

Managed by:

```text
src/data/scores.ts
```

---

## sabi-mo-ano-badges

Stores unlocked badge identifiers.

Managed by:

```text
src/data/badges.ts
```

---

## sabi-mo-ano-game-history

Stores previous game sessions.

Each entry includes:

- Date
- Score
- Category
- Difficulty
- Mode
- Correct answers
- Total rounds

Current implementation stores up to:

```text
50 game sessions
```

Older entries are automatically removed.

Managed by:

```text
src/data/gameHistory.ts
```

---

# Static Data

Some application data is not stored in localStorage.

Instead, it is bundled with the application.

Examples include:

- Phrase library
- Badge definitions
- Deck metadata
- Badge icons
- Stub leaderboard data

These resources are loaded from modules inside:

```text
src/data/
```

---

# Data Ownership

Each storage key has one owner.

| Storage Key | Owner |
|--------------|-------|
| sabi-mo-ano-profile | profile.ts |
| sabi-mo-ano-settings | profile.ts |
| sabi-mo-ano-game-settings | gameSettingsStorage.ts |
| sabi-mo-ano-scores | scores.ts |
| sabi-mo-ano-badges | badges.ts |
| sabi-mo-ano-game-history | gameHistory.ts |

No two modules should manage the same storage key.

---

# Loading Pattern

Typical loading flow:

```text
Component

↓

Data Layer

↓

Read localStorage

↓

Parse JSON

↓

Validate

↓

Return Data
```

The Data Layer is responsible for providing safe defaults when stored data is missing or invalid.

---

# Saving Pattern

Typical save flow:

```text
Component

↓

Data Layer

↓

Validate

↓

Serialize JSON

↓

Write localStorage
```

Components should not perform serialization directly.

---

# Version Compatibility

The current implementation uses default object merging to support new fields.

Example:

```typescript
{
    ...DEFAULT_PROFILE,
    ...storedProfile
}
```

This allows newly introduced fields to receive sensible defaults without breaking older saved data.

---

# Error Recovery

The persistence layer should gracefully handle:

- Missing storage
- Invalid JSON
- Corrupted values
- Unexpected field types

When recovery is possible, default values should be used instead of crashing the application.

---

# Performance

Current implementation provides:

- Immediate reads
- Immediate writes
- No network latency
- Minimal storage overhead

Given the current amount of stored data, localStorage provides sufficient performance.

---

# Limitations

Current limitations include:

- JSON-only storage
- No transactions
- No relational data
- No concurrent access control
- Browser storage limits
- Device-local persistence only

These limitations are acceptable for the current offline-first architecture.

---

# Planned Evolution

Future versions may replace localStorage with SQLite.

The Data Layer should abstract persistence so that components remain unchanged during migration.

Reference:

- DATABASE.md
- SQLITE.md

---

# Related Documents

- DATABASE.md
- DATA_LAYER.md
- STATE_MANAGEMENT.md
- SQLITE.md

---

# Revision History

## Version 1.0.0

- Documented the current localStorage implementation.
- Defined storage keys and ownership.
- Documented loading, saving, migration, and recovery strategies.