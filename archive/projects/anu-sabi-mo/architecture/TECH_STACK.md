# 🛠️ Technology Stack

> **Defines the current technology stack used by Anu Sabi and outlines planned future technologies.**

---

# Purpose

This document serves as the single source of truth for the technologies used throughout the Anu Sabi project.

It distinguishes between technologies currently implemented and those planned for future versions.

---

# Technology Philosophy

Technology choices should prioritize:

- Simplicity
- Maintainability
- Offline-first capability
- Performance
- Cross-platform compatibility
- Long-term scalability

Whenever possible, proven technologies are preferred over experimental solutions.

---

# Current Technology Stack

## Frontend

| Technology | Purpose |
|------------|---------|
| React 18 | User Interface |
| TypeScript | Type safety |
| Vite | Development server and production builds |
| React Router | Client-side routing |

---

## Styling

| Technology | Purpose |
|------------|---------|
| Tailwind CSS | Utility-first styling |
| shadcn/ui | Reusable UI components |
| Radix UI | Accessible UI primitives |
| Custom CSS | Premium Material 3 styling |

---

## Mobile

| Technology | Purpose |
|------------|---------|
| Capacitor | Android and iOS application wrapper |

---

## Data Layer

Current implementation:

- Browser localStorage
- `src/data` modules
- JSON-based persistence

The application is currently designed as an offline-first experience with no backend dependency.

---

## State Management

Current technologies:

- React Context
- React Hooks
- Component Local State

TanStack Query is installed but is not currently used for server state.

---

## Build Tools

| Technology | Purpose |
|------------|---------|
| Vite | Bundling |
| SWC | Fast compilation |
| ESLint | Code quality |
| Vitest | Unit testing |

---

# Planned Technologies

The following technologies are part of the long-term roadmap but are **not currently implemented**.

## Local Database

- SQLite

Purpose:

- Larger datasets
- Better mobile persistence
- Structured storage
- Faster querying

---

## Cloud Backend

Potential future technologies include:

- Neon PostgreSQL
- REST API
- Authentication
- Cloud synchronization

These technologies will be introduced only when online functionality becomes a project requirement.

---

# Selection Principles

New technologies should:

- Solve a real problem
- Improve maintainability
- Integrate well with the existing architecture
- Be actively maintained
- Minimize unnecessary complexity

---

# Related Documents

- SYSTEM_OVERVIEW.md
- FRONTEND.md
- DATABASE.md
- LOCAL_STORAGE.md
- FUTURE_ARCHITECTURE.md

---

# Revision History

## Version 2.0.0

- Updated to reflect the current implementation.
- Documented localStorage as the active persistence layer.
- Moved SQLite and Neon to planned technologies.
- Clarified current state management and build tooling.