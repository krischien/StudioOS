# 🗄️ Database Architecture

> **Defines the persistence architecture of Anu Sabi, including current implementation and future evolution.**

---

# Purpose

This document is the authoritative reference for how data is stored, managed, and persisted within Anu Sabi.

It describes the current implementation while outlining the planned evolution of the persistence layer.

---

# Philosophy

Anu Sabi follows an **offline-first** philosophy.

The game should remain fully playable without:

- Internet connectivity
- User accounts
- Cloud synchronization
- Backend services

Persistence should be simple, reliable, and transparent.

---

# Current Architecture

The current persistence architecture is:

```text
React Components

↓

React Context / Local State

↓

Data Layer (src/data)

↓

Browser localStorage
```

The application currently has:

- No SQL database
- No backend server
- No cloud synchronization
- No authentication

All player progress is stored locally on the device.

---

# Responsibilities

The persistence layer is responsible for:

- Saving player progress
- Loading player progress
- Game settings
- Badge progression
- Daily streak
- Game history
- Best scores

Persistence should never contain UI logic.

---

# Current Storage Technology

Current implementation:

```text
Browser localStorage
```

Storage is managed exclusively through modules in:

```text
src/data/
```

Reference:

- DATA_LAYER.md

---

# Stored Information

Current persistent information includes:

- Player profile
- Coins
- Rank
- Badge progress
- Daily streak
- Game settings
- Best scores
- Game history
- Application preferences

---

# Data Ownership

Every piece of persistent data has a single owner.

| Data | Owner |
|------|-------|
| Profile | profile.ts |
| Settings | gameSettingsStorage.ts |
| Scores | scores.ts |
| Badges | badges.ts |
| History | gameHistory.ts |
| Daily Streak | dailyStreak.ts |
| Phrase Library | phrases.ts (static data) |

This prevents duplicate sources of truth.

---

# Persistence Principles

Persistent storage should:

- Be predictable
- Be recoverable
- Be version tolerant
- Avoid unnecessary duplication
- Remain independent of the UI

---

# Current Characteristics

The current persistence system offers:

- Offline play
- Fast loading
- No network dependency
- Simple JSON storage
- Cross-platform compatibility

It is intentionally lightweight for the current stage of development.

---

# Planned Evolution

As Anu Sabi grows, persistence may evolve through several stages.

## Stage 1 (Current)

```text
localStorage
```

## Stage 2 (Planned)

```text
SQLite
```

Benefits:

- Structured storage
- Better query performance
- Larger datasets
- Transaction support

Reference:

- SQLITE.md

---

## Stage 3 (Future)

```text
SQLite

↓

Synchronization Layer

↓

REST API

↓

Neon PostgreSQL
```

Benefits:

- User accounts
- Cloud saves
- Online leaderboards
- Multiplayer support
- Cross-device synchronization

Reference:

- NEON.md

---

# Migration Strategy

Future migrations should prioritize:

- Zero player data loss
- Automatic migration
- Backward compatibility
- Minimal user disruption

Players should never lose progress during storage upgrades.

---

# Backup Philosophy

Current implementation relies on local browser storage.

Future versions may introduce:

- Cloud backup
- Device synchronization
- Export / Import
- Recovery tools

---

# Security

Persistent data should:

- Avoid unnecessary sensitive information
- Validate loaded data
- Recover gracefully from corrupted storage
- Prevent invalid application state

---

# Related Documents

- DATA_LAYER.md
- LOCAL_STORAGE.md
- SQLITE.md
- NEON.md
- STATE_MANAGEMENT.md

---

# Revision History

## Version 1.0.0

- Established the persistence architecture.
- Documented localStorage as the current implementation.
- Defined the roadmap toward SQLite and Neon.