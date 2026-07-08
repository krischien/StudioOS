# Backend Documentation

> **Defines the current backend status, target architecture, and long-term backend roadmap for Anu Sabi.**

---

# Overview

Although the current version of Anu Sabi operates entirely as a client-side application, the project has been intentionally designed to evolve into a modern offline-first platform.

The backend architecture described throughout this documentation represents the long-term technical direction of the project.

---

# Current State

Current implementation:

- React
- TypeScript
- Vite
- Capacitor
- localStorage
- No backend server
- No authentication
- No online synchronization
- No cloud database
- No REST API
- No WebSocket services

The application is fully playable without internet connectivity.

---

# Backend Vision

The future backend will provide:

- User accounts
- Authentication
- Cloud save
- Multiplayer support
- Online leaderboards
- Daily challenges
- Analytics
- Rambler Engine synchronization
- AI-assisted services
- Content distribution
- Push notifications
- Administration portal

The architecture will preserve offline gameplay while adding connected features.

---

# Core Principles

The backend architecture follows these principles:

- Offline First
- Sync Instead of Require Connection
- API First
- Modular Services
- Event Driven
- Scalable
- Secure
- AI Ready

Offline functionality should never depend on server availability.

---

# Target Architecture

```
                Internet

                    │

            API Gateway

                    │

        Authentication Service

                    │

 ┌──────────┬──────────────┬─────────────┐
 │          │              │             │
 │          │              │             │
User    Content       Analytics    Leaderboards
Service   Service       Service        Service

 │          │              │             │

 └──────────┴──────────────┴─────────────┘

             Neon PostgreSQL

                    │

              Sync Engine

                    │

          SQLite (Device Cache)

                    │

           React + Capacitor
```

---

# Current Storage Evolution

Stage 1

```
React

↓

localStorage
```

Stage 2

```
React

↓

SQLite
```

Stage 3

```
React

↓

SQLite

↓

Sync Engine

↓

Backend API

↓

Neon PostgreSQL
```

This migration minimizes disruption while enabling continuous feature growth.

---

# Documentation Structure

This package contains:

01_BACKEND_OVERVIEW.md

Introduces backend philosophy and objectives.

---

02_SYSTEM_ARCHITECTURE.md

Overall backend architecture.

---

03_API_DESIGN.md

REST API conventions and standards.

---

04_DATABASE_ARCHITECTURE.md

Neon and SQLite architecture.

---

05_AUTHENTICATION.md

User authentication strategy.

---

06_USER_PROFILES.md

Player accounts and cloud profiles.

---

07_GAME_SERVICES.md

Gameplay services and cloud functionality.

---

08_LEADERBOARD_SERVICE.md

Online leaderboard architecture.

---

09_CONTENT_SERVICE.md

Phrase synchronization and content delivery.

---

10_ANALYTICS_SERVICE.md

Gameplay analytics backend.

---

11_SYNC_ENGINE.md

Offline synchronization architecture.

---

12_NOTIFICATION_SERVICE.md

Push notifications and announcements.

---

13_ADMIN_PORTAL.md

Administrative backend.

---

14_MICROSERVICES.md

Long-term service decomposition.

---

15_BACKEND_ROADMAP.md

Backend implementation roadmap.

---

# Relationship to Other Documentation

Backend documentation complements:

- Architecture
- Engineering
- Content
- Security
- DevOps

Together they define the complete StudioOS technical architecture.

---

# Current vs Future

Throughout this documentation every feature is categorized as:

Current

Implemented today.

Target

Planned for implementation.

Future

Long-term architectural direction.

This distinction keeps documentation aligned with the actual codebase.

---

# Revision History

## Version 1.0.0

- Created backend documentation package.
- Established backend philosophy.
- Defined migration path from localStorage to SQLite and Neon.
- Introduced the long-term service architecture.