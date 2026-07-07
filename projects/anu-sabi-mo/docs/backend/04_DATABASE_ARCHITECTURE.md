# Database Architecture

> **Defines the current storage model, target database architecture, synchronization strategy, and long-term data management approach for Anu Sabi.**

---

# Purpose

The database architecture provides a scalable, secure, and resilient data foundation for Anu Sabi.

The architecture follows an **Offline First** strategy where the player's device remains fully functional without network connectivity while cloud services provide synchronization, backup, multiplayer features, and analytics.

---

# Design Goals

The database architecture should be:

- Offline First
- Highly Available
- Scalable
- Secure
- Synchronizable
- Storage Independent
- AI Ready
- Migration Friendly

The database should support future expansion without requiring major architectural redesign.

---

# Current Implementation

Current storage architecture:

```
React Client

↓

localStorage
```

Currently stored locally:

- Player Profile
- Coins
- Badges
- Game History
- Settings
- Daily Streak
- Best Scores
- Game Configuration

No server-side persistence currently exists.

---

# Current Limitations

Current limitations include:

- Browser storage limits
- No relational structure
- No synchronization
- No transactions
- No cloud backup
- No multi-device support
- No efficient querying

These limitations are acceptable during early development.

---

# Target Architecture

The long-term architecture introduces multiple storage layers.

```
React Client

↓

SQLite

↓

Sync Engine

↓

Backend API

↓

Neon PostgreSQL
```

Each layer has a clearly defined responsibility.

---

# Storage Layers

## Layer 1

### Local Cache

Technology:

```
SQLite
```

Responsibilities:

- Offline gameplay
- Cached content
- Player progress
- Pending synchronization
- Local analytics
- Temporary data

SQLite is the authoritative data source while offline.

---

## Layer 2

### Synchronization Layer

Responsibilities:

- Upload local changes
- Download updates
- Resolve conflicts
- Queue failed operations
- Track synchronization state

The synchronization layer coordinates data movement but does not permanently store business data.

---

## Layer 3

### Cloud Database

Technology:

```
Neon PostgreSQL
```

Responsibilities:

- User accounts
- Cloud profiles
- Leaderboards
- Analytics
- Shared content
- Administrative data
- Global statistics

Neon acts as the cloud source of truth for shared data.

---

# Data Ownership

Data should have a single authoritative owner.

| Data | Owner |
|------|-------|
| Gameplay session | SQLite |
| Local settings | SQLite |
| Cached content | SQLite |
| Pending sync queue | SQLite |
| User account | Neon |
| Cloud profile | Neon |
| Leaderboards | Neon |
| Analytics | Neon |
| Shared content | Neon |

Clear ownership simplifies synchronization.

---

# Synchronization Strategy

Synchronization should follow:

```
SQLite

↓

Sync Queue

↓

API

↓

Neon
```

Changes are transmitted asynchronously whenever connectivity becomes available.

Gameplay should never block waiting for synchronization.

---

# Conflict Resolution

Conflicts may occur when multiple devices modify the same data.

General strategies include:

- Last write wins (for non-critical settings)
- Server authority (for competitive data)
- Merge where practical (for cumulative statistics)
- Manual resolution (administrative cases)

Each data type may define its own conflict strategy.

---

# Database Evolution

The storage roadmap is divided into phases.

## Phase 1

```
localStorage
```

Current implementation.

---

## Phase 2

```
SQLite
```

Benefits:

- Structured schema
- Better performance
- Transactions
- Larger datasets
- Improved caching

---

## Phase 3

```
SQLite

↓

Synchronization

↓

Neon
```

Benefits:

- Cloud backup
- Cross-device support
- Shared content
- Multiplayer readiness
- Remote analytics

---

# Schema Management

Database schemas should be versioned.

Every schema change should include:

- Version number
- Migration script
- Compatibility notes
- Rollback strategy

Schema evolution should preserve player progress whenever possible.

---

# Migrations

Migration process:

```
Old Schema

↓

Migration

↓

Validation

↓

Updated Schema
```

Migrations should be:

- Repeatable
- Reversible where practical
- Fully tested
- Backward compatible when possible

---

# Transactions

Critical operations should execute within database transactions.

Examples include:

- Reward claims
- Currency updates
- Purchase completion
- Synchronization batches
- Profile updates

Transactions help maintain data integrity.

---

# Indexing

Frequently queried data should be indexed.

Future candidates include:

- Player ID
- Content ID
- Category
- Difficulty
- Timestamp
- Leaderboard score

Indexes should be reviewed as usage patterns evolve.

---

# Backups

Cloud backups should protect:

- User accounts
- Player progress
- Content library
- Administrative data
- Analytics

Backup frequency and retention policies are defined by operational requirements.

SQLite remains the player's offline recovery cache.

---

# Security

Sensitive data should be protected using:

- Encryption in transit
- Encryption at rest
- Access control
- Secure credentials
- Least privilege
- Audit logging

Security implementation is documented in the Security package.

---

# Performance

Database performance objectives include:

- Fast local reads
- Minimal synchronization latency
- Efficient incremental updates
- Optimized indexes
- Batched writes
- Reduced network usage

Performance should prioritize gameplay responsiveness.

---

# Scalability

The architecture should scale from:

```
Single Device

↓

Thousands of Players

↓

Millions of Players
```

Scaling should primarily occur in the cloud while maintaining lightweight local storage.

---

# AI Integration

Future AI services may access cloud data for:

- Phrase generation
- Metadata recommendations
- Difficulty analysis
- Analytics insights
- Editorial support

AI services should interact through backend APIs rather than directly accessing database instances.

---

# Future Enhancements

Potential future improvements include:

- Read replicas
- Regional database deployments
- Content Delivery Network integration
- Materialized analytics views
- Event sourcing
- Data warehouse integration
- Automated archival policies

These enhancements should preserve compatibility with the core architecture.

---

# Related Documents

- README.md
- 02_SYSTEM_ARCHITECTURE.md
- 03_API_DESIGN.md
- 05_AUTHENTICATION.md
- 09_CONTENT_SERVICE.md
- 10_ANALYTICS_SERVICE.md
- 11_SYNC_ENGINE.md
- 15_BACKEND_ROADMAP.md

---

# Revision History

## Version 1.0.0

- Defined the official database architecture.
- Documented the migration path from localStorage to SQLite and Neon PostgreSQL.
- Established data ownership, synchronization strategy, schema management, transactions, security, scalability, and future enhancements.