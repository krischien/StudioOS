# System Architecture

> **Defines the overall backend architecture, system components, communication patterns, and data flow for the Anu Sabi platform.**

---

# Purpose

This document describes how all backend components interact to provide cloud functionality while preserving the Offline First design philosophy.

The architecture is designed to evolve incrementally without disrupting existing gameplay.

---

# Architectural Goals

The backend architecture should be:

- Offline First
- Modular
- Scalable
- Event Driven
- API First
- Secure
- Observable
- AI Ready

These principles guide all backend design decisions.

---

# Current Architecture

Today, Anu Sabi operates entirely on the client.

```
┌────────────────────┐
│   React Client     │
├────────────────────┤
│ Game Logic         │
│ Profile            │
│ Badges             │
│ Coins              │
│ History            │
│ Settings           │
└─────────┬──────────┘
          │
          ▼
   Browser localStorage
```

Characteristics:

- No backend server
- No authentication
- No cloud storage
- No synchronization
- Fully offline

---

# Target Architecture

The long-term architecture introduces cloud services while keeping gameplay local.

```
                        Internet
                            │
                            ▼
                  ┌──────────────────┐
                  │    API Gateway   │
                  └────────┬─────────┘
                           │
     ┌───────────┬─────────┼─────────┬────────────┐
     ▼           ▼         ▼         ▼            ▼
 Authentication Profiles Content Analytics Notifications
     │           │         │         │            │
     └───────────┴─────────┼─────────┴────────────┘
                           │
                    Neon PostgreSQL
                           │
                    Event Processing
                           │
                     Sync Engine
                           │
                     SQLite Cache
                           │
                     React Client
```

Gameplay remains functional even when backend services are unavailable.

---

# High-Level Components

The platform consists of six primary layers.

```
Presentation

↓

Local Data

↓

Synchronization

↓

API Layer

↓

Backend Services

↓

Persistent Storage
```

Each layer has clearly defined responsibilities.

---

# Presentation Layer

Responsible for:

- React UI
- Gameplay
- Local validation
- User interaction
- Offline experience

The client should make as few network requests as possible.

---

# Local Data Layer

Initially:

```
localStorage
```

Future:

```
SQLite
```

Responsibilities include:

- Player profile
- Cached content
- Game history
- Pending sync operations
- Offline analytics
- Cached leaderboards

SQLite becomes the authoritative local data store.

---

# Synchronization Layer

The Sync Engine coordinates communication between the device and the backend.

Responsibilities include:

- Upload local changes
- Download new content
- Conflict resolution
- Retry failed operations
- Queue offline events
- Maintain consistency

Synchronization should occur automatically whenever connectivity is available.

---

# API Layer

The API Gateway provides a single entry point for backend services.

Responsibilities include:

- Authentication
- Request routing
- Rate limiting
- Logging
- API versioning
- Security enforcement

Clients should communicate only with the gateway.

---

# Service Layer

Backend functionality is divided into independent services.

Initial services include:

- Authentication Service
- Profile Service
- Game Service
- Content Service
- Leaderboard Service
- Analytics Service
- Notification Service

Each service owns its own business logic.

---

# Storage Layer

Primary storage:

```
Neon PostgreSQL
```

Responsibilities:

- User accounts
- Cloud progress
- Analytics
- Content library
- Leaderboards
- Administrative data

The database acts as the cloud source of truth.

---

# Data Flow

Typical gameplay flow:

```
Player

↓

Game Session

↓

SQLite

↓

Sync Queue

↓

API Gateway

↓

Backend Services

↓

Neon Database
```

The client never waits for synchronization before allowing gameplay to continue.

---

# Event Flow

Important events generate backend events.

Examples:

```
Game Completed

↓

Achievement Unlocked

↓

Daily Challenge Completed

↓

Leaderboard Updated

↓

Analytics Recorded
```

Events should be processed asynchronously whenever possible.

---

# Offline Workflow

```
Player

↓

SQLite

↓

Offline Queue

↓

Internet Available

↓

Synchronization

↓

Cloud
```

Offline capability remains the default operating mode.

---

# Online Workflow

When connectivity exists:

```
Player

↓

SQLite

↓

Sync Engine

↓

Backend API

↓

Cloud Services

↓

Updated Client
```

Synchronization should occur in the background.

---

# AI Integration

Future AI services consume backend APIs rather than accessing client devices directly.

Examples include:

- Phrase generation
- Metadata recommendations
- Difficulty analysis
- Duplicate detection
- Editorial assistance

This keeps AI services isolated from gameplay.

---

# Administrative Architecture

Administrative tools interact through the same API Gateway.

```
Admin Portal

↓

API Gateway

↓

Backend Services

↓

Neon Database
```

Administrative access should never bypass backend security.

---

# Scalability

The architecture should support gradual growth.

```
Single Device

↓

Offline Users

↓

Thousands of Players

↓

Global Community

↓

Multiple Regions
```

Each service should scale independently.

---

# Reliability

The platform should tolerate:

- Temporary network outages
- API downtime
- Device restarts
- Interrupted synchronization
- Partial failures

Gameplay should remain uninterrupted whenever possible.

---

# Observability

Future monitoring should include:

- API latency
- Synchronization success rate
- Error rates
- Database health
- Service availability
- Queue length
- Content delivery metrics

Operational visibility improves reliability.

---

# Security Boundaries

Security responsibilities are divided across layers.

Client:

- Local validation
- Secure storage
- Session handling

Gateway:

- Authentication
- Authorization
- Rate limiting

Services:

- Business rules
- Permissions
- Audit logging

Database:

- Encryption
- Backup
- Access control

Detailed security guidance is documented separately.

---

# Future Expansion

The architecture supports future additions such as:

- Multiplayer
- Live events
- Community challenges
- AI moderation
- Recommendation systems
- Tournament services
- Seasonal events

These features can be introduced without redesigning the core platform.

---

# Related Documents

- README.md
- 01_BACKEND_OVERVIEW.md
- 03_API_DESIGN.md
- 04_DATABASE_ARCHITECTURE.md
- 10_ANALYTICS_SERVICE.md
- 11_SYNC_ENGINE.md
- 12_NOTIFICATION_SERVICE.md
- 14_MICROSERVICES.md

---

# Revision History

## Version 1.0.0

- Defined the complete backend system architecture.
- Documented architectural layers, service interactions, synchronization model, data flow, event flow, scalability strategy, AI integration, and future expansion.