# 🧠 State Management

> **Defines how application state is managed throughout Anu Sabi.**

---

# Purpose

This document explains how state is organized within Anu Sabi.

It establishes the responsibilities of each type of state and provides guidance for future development.

---

# Philosophy

State should always exist at the lowest level capable of managing it.

General principles:

- Keep state local whenever possible.
- Share state only when necessary.
- Persist only data that must survive application restarts.
- Avoid duplicated sources of truth.

---

# Current State Architecture

```text
                User Interaction
                       │
                       ▼
               React Components
                       │
          ┌────────────┴────────────┐
          ▼                         ▼
 Local Component State       React Context
          │                         │
          └────────────┬────────────┘
                       ▼
             Data Layer (src/data)
                       │
                       ▼
                 localStorage
```

The application currently uses a combination of local component state, React Context, and browser localStorage.

---

# Types of State

The application manages four primary categories of state.

---

## Local Component State

Local state belongs to an individual screen or component.

Examples:

- Current answer input
- Current score
- Timer countdown
- Dialog visibility
- Selected tabs
- Animation state

This state is managed with React Hooks.

Example:

```typescript
const [score, setScore] = useState(0);
```

Local state should never be persisted unless necessary.

---

## Shared Application State

Shared state is accessed by multiple parts of the application.

Current implementation:

- Game settings
    - Category
    - Difficulty
    - Game mode

This state is managed using:

```text
GameContext
```

Additional contexts should only be introduced when truly required.

---

## Persistent State

Persistent state survives application restarts.

Current implementation uses:

```text
Browser localStorage
```

Examples include:

- Player profile
- Coins
- Badges
- Best scores
- Daily streak
- Game history
- Application settings

Persistent state is managed exclusively through the Data Layer.

Components should never access localStorage directly.

---

## Navigation State

Some state is passed between screens.

Example:

```text
GameScreen

↓

navigate("/end", {
    state: {
        score,
        correctCount,
        totalRounds
    }
})
```

Navigation state is temporary and should never replace persistent storage.

---

# State Ownership

Each piece of information should have one owner.

| State | Owner |
|--------|-------|
| Game settings | GameContext |
| Player profile | Data Layer |
| Badges | Data Layer |
| Scores | Data Layer |
| Daily streak | Data Layer |
| Current game session | GameScreen |
| UI state | Individual components |

This prevents conflicting sources of truth.

---

# Data Flow

Typical application flow:

```text
User

↓

Component

↓

Context (if needed)

↓

Data Layer

↓

localStorage

↓

Updated UI
```

The UI should communicate through the Data Layer rather than interacting directly with browser storage.

---

# Current Characteristics

The current architecture provides:

- Offline-first gameplay
- Fast local updates
- No backend dependency
- Simple persistence model
- Cross-platform compatibility

---

# Future Evolution

As online functionality is introduced, state management may evolve.

Possible future architecture:

```text
React Components

↓

React Context

↓

Services

↓

SQLite

↓

Cloud Sync

↓

Neon PostgreSQL
```

Additional technologies such as TanStack Query may be adopted for server state when APIs are introduced.

---

# Best Practices

Developers should:

- Prefer local state.
- Keep contexts focused.
- Avoid unnecessary global state.
- Persist only essential information.
- Keep business logic inside the Data Layer.
- Keep UI state inside components.

---

# Anti-Patterns

Avoid:

- Direct localStorage access from components.
- Duplicate state across multiple contexts.
- Business logic inside UI components.
- Persisting temporary UI state.

---

# Related Documents

- FRONTEND.md
- DATA_LAYER.md
- DATABASE.md
- LOCAL_STORAGE.md
- ROUTING.md

---

# Revision History

## Version 2.0.0

- Updated to reflect the current implementation.
- Documented local component state, GameContext, router state, and localStorage.
- Clarified ownership of persistent state.
- Distinguished current architecture from future evolution.