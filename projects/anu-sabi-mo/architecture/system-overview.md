# 🏗️ System Overview

> **Provides a high-level view of the Anu Sabi architecture, major subsystems, and long-term evolution.**

---

# Purpose

This document describes the current architecture of Anu Sabi and serves as the entry point for understanding how the application is organized.

It distinguishes between the current implementation and planned future architecture.

---

# Design Philosophy

Anu Sabi is designed around five core principles:

- Offline-first
- Mobile-friendly
- Modular
- Easy to maintain
- Ready for future expansion

The architecture favors simplicity today while allowing future growth without major redesign.

---

# Current Architecture

The application is currently a client-only React application.

```text
                 User
                   │
                   ▼
          React Components
                   │
                   ▼
             React Context
             Local State
                   │
                   ▼
          Data Layer (src/data)
                   │
                   ▼
             localStorage
```

There is currently:

- No backend server
- No cloud synchronization
- No SQL database
- No user authentication

All gameplay and persistence happen entirely on the user's device.

---

# Major Layers

## Presentation Layer

Responsible for:

- User interface
- Navigation
- User interactions
- Visual feedback

Primary technologies:

- React
- TypeScript
- Tailwind CSS
- shadcn/ui

Reference:

- FRONTEND.md

---

## State Layer

Responsible for:

- UI state
- Game settings
- Shared application state
- Temporary gameplay state

Uses:

- React Context
- React Hooks
- Component State

Reference:

- STATE_MANAGEMENT.md

---

## Data Layer

The Data Layer is implemented using modules located in:

```text
src/data/
```

Responsibilities include:

- Profile management
- Phrase loading
- Badge logic
- Score tracking
- Daily streak logic
- Game history
- Settings persistence

The Data Layer combines business logic with local persistence.

Reference:

- DATA_LAYER.md

---

## Persistence Layer

Current persistence is provided by:

```text
Browser localStorage
```

Persistent data includes:

- Player profile
- Game settings
- Scores
- Badges
- Daily streak
- Game history

Reference:

- DATABASE.md
- LOCAL_STORAGE.md

---

# Application Flow

Typical gameplay flow:

```text
Player

↓

React Component

↓

Context / Local State

↓

Data Module

↓

localStorage

↓

Updated UI
```

---

# Folder Architecture

Simplified structure:

```text
src/

├── components/
├── context/
├── data/
├── hooks/
├── pages/
├── styles/
├── types/
├── utils/
└── lib/
```

Each folder has a single responsibility.

---

# Current Characteristics

Current implementation provides:

- Offline gameplay
- Local persistence
- Cross-platform deployment
- Mobile support through Capacitor
- No internet dependency

---

# Planned Evolution

As Anu Sabi grows, the architecture may evolve toward:

```text
React

↓

Context

↓

Services

↓

SQLite

↓

Sync Layer

↓

REST API

↓

Neon PostgreSQL
```

This evolution is **planned** but **not currently implemented**.

Future enhancements may include:

- User accounts
- Cloud synchronization
- Multiplayer
- Online leaderboards
- Premium content
- Analytics

---

# Scalability Strategy

Future growth should occur by adding new layers rather than replacing existing ones.

Example:

```text
Today

React

↓

Data Layer

↓

localStorage
```

Future:

```text
React

↓

Services

↓

SQLite

↓

Cloud Sync

↓

Neon
```

This minimizes disruption to existing features.

---

# Related Documents

- TECH_STACK.md
- FRONTEND.md
- STATE_MANAGEMENT.md
- DATA_LAYER.md
- DATABASE.md
- FUTURE_ARCHITECTURE.md

---

# Revision History

## Version 2.0.0

- Updated to accurately reflect the current implementation.
- Introduced the Data Layer as the current architecture.
- Separated current architecture from planned future evolution.
- Documented localStorage as the active persistence layer.