# Anu Sabi

# System Architecture

**Document Version:** 3.0
**Status:** Living Document
**Project:** Anu Sabi
**Owner:** Kristian
**Last Updated:** February 2026

---

# 1. Purpose

This document defines the complete technical architecture of Anu Sabi.

It serves as the blueprint for the application's frontend, backend, database, APIs, multiplayer infrastructure, analytics, security, deployment, and future scalability.

The architecture is designed to support a long-lived product that can evolve from an MVP into a global multiplayer platform.

---

# 2. Architecture Principles

The system should be:

* Modular
* Scalable
* Maintainable
* Secure
* Observable
* Cloud-friendly
* AI-ready

---

# 3. High-Level Architecture

```text
                    Mobile App
                         │
                         ▼
                  Bubble.io Frontend
                         │
         ┌───────────────┼────────────────┐
         │               │                │
         ▼               ▼                ▼
    Bubble DB       Backend APIs     AI Services
         │               │                │
         └───────────────┼────────────────┘
                         ▼
                  Analytics Platform
                         │
                         ▼
                     Admin Portal
```

---

# 4. Technology Stack

## Frontend

* Bubble.io
* Responsive Engine
* Custom JavaScript
* HTML Elements
* CSS

---

## Backend

* Bubble Backend Workflows
* REST APIs
* Webhooks

Future

* Node.js Microservices
* Serverless Functions

---

## Database

Primary

Bubble Database

Future

* PostgreSQL
* Redis
* Firebase (optional)

---

## Authentication

* Email Login
* Google Login
* Apple Login
* Guest Mode

Future

* Facebook Login
* Anonymous Accounts

---

# 5. Core Modules

The system consists of:

* Authentication
* User Profiles
* Matchmaking
* Lobby
* Rambler Engine
* Voting
* Economy
* Shop
* Content Packs
* Analytics
* Notifications
* Admin Portal

Each module should be independently maintainable.

---

# 6. Multiplayer Architecture

Players may create:

* Public Rooms
* Private Rooms
* Friend Rooms

Host responsibilities:

* Room settings
* Match start
* Kick players

Future

* Dedicated multiplayer services
* Regional matchmaking

---

# 7. Database Design

Primary entities include:

* Users
* Matches
* Rounds
* Prompts
* Themes
* Roles
* Content Packs
* Achievements
* Purchases
* Missions
* Events

Relationships should minimize duplication and support efficient querying.

---

# 8. API Layer

Example endpoints:

* Authentication
* Matchmaking
* Match Results
* Daily Rewards
* Shop
* Leaderboards
* Analytics

APIs should be versioned to support future updates.

---

# 9. Analytics

Track:

* Daily Active Users
* Monthly Active Users
* Session Duration
* Match Completion
* Prompt Popularity
* Player Retention
* Content Pack Usage
* Revenue
* Crash Reports

Analytics should guide future balancing decisions.

---

# 10. Notifications

Examples:

* Friend Invitation
* Daily Reward
* Seasonal Event
* New Content Pack
* Challenge Complete

Notifications should be configurable by the player.

---

# 11. Security

Protect:

* User accounts
* Purchases
* Match integrity
* Personal information

Practices include:

* HTTPS
* Secure authentication
* Server-side validation
* Role-based permissions
* Audit logging

---

# 12. Performance

Goals:

* App launch under 3 seconds
* Screen transitions under 300 ms
* Match loading under 2 seconds
* Efficient API usage
* Optimized asset loading

---

# 13. Scalability

Design for growth:

* Modular services
* Caching
* CDN support
* Horizontal scaling
* Background processing

The architecture should accommodate increasing player numbers without major redesign.

---

# 14. AI Readiness

Future AI services may support:

* Prompt generation
* Content moderation
* Localization
* Personalized recommendations
* Difficulty balancing
* Player behavior analysis

AI components should integrate through well-defined APIs.

---

# 15. Deployment Strategy

Development

↓

Testing

↓

Staging

↓

Production

Each environment should maintain separate configurations and databases where appropriate.

---

# 16. Monitoring

Monitor:

* Uptime
* API latency
* Errors
* Failed logins
* Crash reports
* Match failures
* Payment issues

Monitoring should enable rapid issue detection and resolution.

---

# 17. Decision Rationale

### Why Bubble.io for the MVP?

Bubble.io enables rapid development, validation, and iteration while minimizing engineering overhead. It allows the team to focus on gameplay and user feedback before investing in a more complex native architecture.

### Why modular services?

Independent modules simplify maintenance, testing, and future expansion.

### Why design for AI now?

Planning for AI integration early reduces future architectural changes and keeps the platform adaptable.

---

# 18. Future Roadmap

Potential future enhancements:

* Native mobile client
* Dedicated multiplayer servers
* Cloud-based matchmaking
* AI-assisted moderation
* Cross-platform synchronization
* Offline mode
* Creator Portal
* Public APIs

---

# 19. Success Metrics

The architecture succeeds when:

* New features are easy to add.
* System uptime remains high.
* Performance scales with player growth.
* Maintenance effort remains manageable.
* AI features integrate without significant redesign.

---
 
# 20. Related Documents

* 02_GAMEPLAY.md
* 04_UI_UX.md
* 05_ECONOMY.md
* 09_RAMBLER_ENGINE.md
* 11_RESEARCH.md
* 12_PUBLISHING.md

---

# Revision History

## Version 3.0

* Renamed the document to System Architecture.
* Defined the complete technical blueprint.
* Documented the technology stack, modules, security, analytics, deployment, and AI readiness.
* Established architectural principles for long-term scalability.
