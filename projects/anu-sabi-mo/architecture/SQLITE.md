# 🗃️ SQLite Architecture (Planned)

> **Defines the planned SQLite persistence layer for Anu Sabi.**

---

# Status

**Current Status:** Planned

SQLite is **not currently implemented** in Anu Sabi.

The application currently uses browser `localStorage` for persistence.

This document serves as the architectural blueprint for the future migration to SQLite.

---

# Purpose

SQLite will become the primary local database once Anu Sabi outgrows browser localStorage.

The migration aims to provide:

- Better scalability
- Structured data storage
- Improved query performance
- Data integrity
- Easier synchronization with cloud services

---

# Why SQLite?

Browser localStorage works well for the current version of Anu Sabi, but it has several limitations:

- Limited storage capacity
- No relational data
- No transactions
- No indexing
- No complex queries

SQLite solves these limitations while remaining fully offline.

---

# Planned Architecture

```text
React Components

↓

React Context

↓

Data Layer

↓

SQLite Repository Layer

↓

SQLite Database
```

The user interface should remain unaware of SQLite.

All database access should continue through the Data Layer.

---

# Design Goals

The SQLite layer should provide:

- Offline-first operation
- Fast reads and writes
- ACID transactions
- Indexed queries
- Versioned schema
- Automatic migrations
- Reliable data recovery

---

# Proposed Database Structure

The database may contain tables such as:

- profiles
- settings
- game_settings
- scores
- badges
- badge_progress
- game_history
- daily_streak
- decks
- phrase_cache

The exact schema will be finalized during implementation.

---

# Repository Pattern

SQLite access should be encapsulated behind repositories.

Example:

```text
ProfileRepository

↓

SQLite

↓

Profile Data
```

The UI should never execute SQL directly.

---

# Migration Strategy

Migration from localStorage should occur automatically.

Typical flow:

```text
Application Starts

↓

Check Database

↓

Existing SQLite?

↓

No

↓

Read localStorage

↓

Import Data

↓

Create Database

↓

Mark Migration Complete

↓

Continue Normally
```

Player progress should be preserved without requiring user intervention.

---

# Data Synchronization

Initially, SQLite will operate as a standalone local database.

Future cloud synchronization will build upon this foundation.

```text
SQLite

↓

Sync Engine

↓

Cloud API

↓

Neon PostgreSQL
```

---

# Versioning

The SQLite schema should include:

- Schema version
- Migration history
- Automatic upgrades
- Rollback protection where feasible

This ensures compatibility across future releases.

---

# Security Considerations

The SQLite database should:

- Validate imported data
- Prevent corruption
- Support backup and restore
- Handle migration failures gracefully

Sensitive user information should not be stored unnecessarily.

---

# Benefits

Compared with localStorage, SQLite offers:

- Better scalability
- Faster searches
- Structured relationships
- Improved maintainability
- Easier analytics
- Cleaner synchronization

---

# Risks

Migration introduces additional complexity.

Potential risks include:

- Failed migrations
- Data corruption
- Schema incompatibilities
- Platform-specific issues

These risks should be mitigated through testing and versioned migrations.

---

# Related Documents

- DATABASE.md
- LOCAL_STORAGE.md
- DATA_LAYER.md
- NEON.md

---

# Revision History

## Version 1.0.0

- Created the initial SQLite architecture proposal.
- Defined migration goals and planned repository structure.
- Documented the relationship between SQLite and future cloud synchronization.