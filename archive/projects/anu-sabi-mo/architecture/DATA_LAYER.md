# 🗂️ Data Layer Architecture

> **Defines the current Data Layer of Anu Sabi, its responsibilities, organization, and future evolution.**

---

# Purpose

The Data Layer is responsible for managing the application's business logic and persistent data.

In the current implementation, this layer is located in:

```text
src/data/
```

It combines domain logic with local persistence using browser localStorage.

This document serves as the authoritative reference for how application data is organized and accessed.

---

# Philosophy

The Data Layer exists to separate application logic from the user interface.

Components should focus on displaying information.

The Data Layer should focus on:

- Managing game logic
- Managing player data
- Managing persistence
- Validating data
- Coordinating application rules

---

# Current Architecture

```text
React Components

↓

React Context

↓

Data Layer (src/data)

↓

localStorage
```

There are currently:

- No service classes
- No repository pattern
- No ORM
- No SQL database

Instead, domain modules expose reusable functions.

---

# Responsibilities

The Data Layer is responsible for:

- Profile management
- Game settings
- Phrase management
- Badge management
- Daily streak logic
- Score tracking
- Game history
- Leaderboard data
- Deck definitions

The Data Layer should never render UI.

---

# Current Modules

## profile.ts

Responsible for:

- Player profile
- Coins
- Rank
- Sound settings
- Haptics
- Daily game progress

---

## gameSettingsStorage.ts

Responsible for:

- Category
- Difficulty
- Game mode

---

## phrases.ts

Responsible for:

- Phrase database
- Phrase selection
- Answer validation

---

## scores.ts

Responsible for:

- Best scores
- Score persistence

---

## badges.ts

Responsible for:

- Badge definitions
- Badge unlock logic
- Badge persistence

---

## badgeIcons.ts

Responsible for:

- Badge icon mapping

---

## dailyStreak.ts

Responsible for:

- Login streak
- Daily rewards
- Reward claiming
- Streak calculations

---

## gameHistory.ts

Responsible for:

- Game history
- Session storage
- History trimming

---

## leaderboard.ts

Responsible for:

- Local leaderboard
- Stub leaderboard data
- User score aggregation

---

## decks.ts

Responsible for:

- Deck metadata
- Category definitions
- Deck availability

---

# Module Design

Each module should:

- Focus on one domain
- Export reusable functions
- Avoid UI dependencies
- Remain easy to test

Example:

```text
GameScreen

↓

loadProfile()

↓

saveProfile()

↓

Updated UI
```

---

# Persistence

Current persistence is provided by:

```text
Browser localStorage
```

The Data Layer owns all interaction with localStorage.

Components should never read or write browser storage directly.

Reference:

DATABASE.md

LOCAL_STORAGE.md

---

# Error Handling

Modules should:

- Handle corrupted data gracefully
- Return safe defaults
- Avoid throwing unnecessary exceptions
- Protect the application from malformed storage

---

# Future Evolution

As Anu Sabi grows, this layer may evolve into:

```text
src/

├── services/
├── repositories/
├── database/
└── sync/
```

Possible future responsibilities include:

- SQLite integration
- Repository pattern
- Cloud synchronization
- API communication
- Background sync
- Dependency injection

The existing domain modules provide a strong foundation for this evolution.

---

# Design Principles

Every module should follow these principles:

- Single Responsibility
- Reusability
- Predictability
- Testability
- Minimal side effects

---

# Related Documents

- FRONTEND.md
- STATE_MANAGEMENT.md
- DATABASE.md
- LOCAL_STORAGE.md
- FUTURE_ARCHITECTURE.md

---

# Revision History

## Version 1.0.0

- Introduced the Data Layer architecture.
- Documented the current `src/data` implementation.
- Replaced the previous service-layer documentation.
- Defined the roadmap toward future service and repository layers.