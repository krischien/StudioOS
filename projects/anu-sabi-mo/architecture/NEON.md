# ☁️ Neon Cloud Architecture (Planned)

> **Defines the long-term cloud architecture for Anu Sabi using Neon PostgreSQL and supporting backend services.**

---

# Status

**Current Status:** Planned

Neon PostgreSQL is **not currently implemented**.

Anu Sabi currently operates as a completely offline application using browser localStorage.

SQLite is planned as the next persistence layer before introducing cloud synchronization.

---

# Purpose

Neon PostgreSQL will become the central cloud database when Anu Sabi expands beyond a local-only experience.

Its purpose is to support:

- Cloud save
- User accounts
- Online leaderboards
- Cross-device synchronization
- Friends and social features
- Multiplayer experiences
- Analytics
- Premium subscriptions
- Future live content

---

# Vision

The long-term goal is to evolve Anu Sabi into an online-capable platform while preserving its offline-first philosophy.

Players should always be able to play offline.

Internet connectivity should enhance the experience, not become a requirement.

---

# Planned Architecture

```text
                React Application
                       │
                       ▼
                 React Context
                       │
                       ▼
                  Data Layer
                       │
             ┌─────────┴─────────┐
             ▼                   ▼
         SQLite             Sync Engine
             │                   │
             └─────────┬─────────┘
                       ▼
                  REST API
                       │
                       ▼
              Neon PostgreSQL
```

The application should continue functioning locally even when cloud services are unavailable.

---

# Core Responsibilities

The cloud platform may provide:

- User authentication
- Cloud profile storage
- Progress synchronization
- Online leaderboards
- Friends
- Multiplayer matchmaking
- Live events
- Premium account management
- Analytics
- Content delivery

---

# Offline-First Strategy

The application should always treat SQLite as the primary source of truth while offline.

Typical workflow:

```text
Player Action

↓

SQLite

↓

Sync Queue

↓

Internet Available?

↓

Yes

↓

REST API

↓

Neon PostgreSQL
```

This ensures gameplay never depends on network availability.

---

# Synchronization Principles

Synchronization should be:

- Automatic
- Incremental
- Background
- Resumable
- Reliable

Players should never need to manually upload or download their data.

---

# Conflict Resolution

When data differs between the device and the cloud, synchronization should follow predictable rules.

Examples:

| Data | Suggested Strategy |
|------|--------------------|
| Coins | Highest valid total after server validation |
| Best Scores | Highest score wins |
| Badge Unlocks | Merge unlocked badges |
| Game History | Merge unique sessions |
| Profile Settings | Most recent update |
| Daily Streak | Validate using server timestamps |

Exact conflict rules will be finalized during implementation.

---

# Authentication

Potential authentication providers may include:

- Google
- Apple
- Email and Password
- Anonymous Guest Accounts

Authentication should remain optional for offline players whenever possible.

---

# API Responsibilities

The future backend API may expose services for:

- Authentication
- Player Profiles
- Leaderboards
- Friends
- Multiplayer
- Premium Features
- Analytics
- Cloud Saves

The React application should communicate only with the API.

Direct database access from clients should never occur.

---

# Security Principles

The cloud platform should:

- Validate all client requests
- Authenticate every protected endpoint
- Prevent unauthorized data access
- Encrypt communication using HTTPS
- Minimize stored personal information

Server-side validation should always be considered authoritative.

---

# Scalability Goals

The cloud architecture should support:

- Millions of player accounts
- Global leaderboard queries
- Regional matchmaking
- Live seasonal events
- Real-time statistics
- Future AI-powered features

The system should scale horizontally without requiring major changes to the client application.

---

# Migration Strategy

The planned evolution of persistence is:

```text
Phase 1

localStorage
```

↓

```text
Phase 2

SQLite
```

↓

```text
Phase 3

SQLite

+

Neon PostgreSQL

+

Synchronization
```

Each phase should preserve existing player progress.

---

# Design Principles

The cloud platform should remain:

- Offline-first
- Modular
- Secure
- Scalable
- Maintainable
- Platform-independent

Cloud services should enhance gameplay rather than replace the local experience.

---

# Related Documents

- DATABASE.md
- LOCAL_STORAGE.md
- SQLITE.md
- DATA_LAYER.md
- FUTURE_ARCHITECTURE.md

---

# Revision History

## Version 1.0.0

- Established the long-term cloud architecture vision.
- Defined the role of Neon PostgreSQL.
- Documented synchronization philosophy.
- Introduced conflict resolution and authentication strategy.
- Reinforced the offline-first design philosophy.