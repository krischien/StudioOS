# Analytics Service

> **Defines the architecture, event collection strategy, reporting model, privacy principles, and future analytics capabilities for the Anu Sabi platform.**

---

# Purpose

The Analytics Service collects, processes, and analyzes gameplay and platform events to improve the player experience, guide product decisions, and support future AI-driven insights.

Analytics should operate without affecting gameplay performance.

---

# Design Goals

The Analytics Service should be:

- Privacy-conscious
- Offline First
- Event Driven
- Scalable
- Secure
- Extensible
- Near Real-Time
- AI Ready

Analytics should inform decisions without compromising player trust.

---

# Current Implementation

Current version:

- No backend analytics
- No telemetry collection
- No event pipeline
- No reporting dashboards
- No cloud aggregation

All gameplay data remains local.

---

# Target Architecture

```
Game Client

↓

SQLite Event Queue

↓

Sync Engine

↓

Analytics API

↓

Analytics Service

↓

Analytics Database

↓

Dashboards
```

Gameplay events are collected asynchronously and processed independently from core game logic.

---

# Responsibilities

The Analytics Service manages:

- Event collection
- Event validation
- Aggregation
- Trend analysis
- Reporting
- Dashboard metrics
- Product insights
- AI data preparation

The service does not influence gameplay directly.

---

# Event Collection

Examples of tracked events include:

- Game Started
- Game Completed
- Hint Used
- Phrase Skipped
- Badge Earned
- Daily Challenge Completed
- Login
- Session Started
- Session Ended
- Content Downloaded
- Synchronization Completed

Each event contributes to aggregate platform insights.

---

# Event Lifecycle

```
Gameplay Event

↓

SQLite Queue

↓

Synchronization

↓

Analytics API

↓

Validation

↓

Storage

↓

Aggregation

↓

Reporting
```

Events should never block gameplay.

---

# Event Structure

Each analytics event may contain:

- Event ID
- Event Type
- Timestamp
- User ID (if authenticated)
- Session ID
- Device ID
- App Version
- Platform
- Metadata

The structure should remain consistent across all event types.

---

# Event Categories

Analytics events may be grouped into:

- Gameplay
- Progression
- Content
- Synchronization
- Performance
- Social
- Commerce
- Technical Diagnostics

Categorization simplifies reporting and filtering.

---

---

# Event Catalog

StudioOS adopts a centralized **Event Catalog** that defines every event emitted by backend services.

Rather than allowing each service to create its own event names independently, all events follow a standardized naming convention.

Benefits include:

- Consistent analytics
- Easier dashboard development
- Reliable integrations
- Better documentation
- Improved AI training datasets
- Stable event contracts across services

The Event Catalog becomes a shared StudioOS standard.

---

---

# StudioOS Event Bus

The StudioOS platform adopts an event-driven architecture centered around a shared Event Bus.

Rather than tightly coupling backend services through direct service-to-service communication, services publish standardized events that interested consumers subscribe to.

This architecture improves scalability, resilience, maintainability, and extensibility.

---

## Publish / Subscribe Model

```
Game Service

↓

Publish Event

↓

StudioOS Event Bus

↓

Subscribed Services
```

Services remain unaware of downstream consumers.

---

## Example

```
Game.SessionCompleted

↓

Event Bus

├── Analytics Service
├── Leaderboard Service
├── Notification Service
├── Achievement Service
└── Future AI Services
```

A single event may trigger multiple independent workflows.

---

## Benefits

The Event Bus provides:

- Loose coupling
- Better scalability
- Independent deployments
- Easier testing
- Better monitoring
- Replayable event streams
- Future microservice compatibility

The Event Bus becomes a core StudioOS infrastructure component.

---

## Naming Convention

Events follow the format:

```
Domain.Action
```

Examples:

```
Game.SessionStarted
Game.SessionCompleted
Game.PhraseAnswered
Game.PhraseSkipped
Game.HintUsed
Game.BadgeUnlocked

Profile.Created
Profile.Updated

Content.DownloadStarted
Content.DownloadCompleted

Leaderboard.ScoreSubmitted

Sync.UploadStarted
Sync.UploadCompleted

Notification.Delivered
Notification.Opened
Notification.Dismissed
```

Domain names should remain stable while actions may expand as the platform evolves.

---

## Event Versioning

Each event definition should include:

- Event Name
- Version
- Description
- Required Fields
- Optional Fields
- Source Service
- Owning Team

Versioning enables event evolution without breaking downstream consumers.

---

## Event Ownership

Each service owns its own events.

Examples:

| Service | Event Prefix |
|----------|--------------|
| Game Service | Game.* |
| Authentication | Auth.* |
| Profile Service | Profile.* |
| Leaderboard | Leaderboard.* |
| Content Service | Content.* |
| Notification Service | Notification.* |
| Sync Engine | Sync.* |

Ownership prevents duplicate or conflicting event definitions.

---

## Future StudioOS Integration

The Event Catalog should become a shared StudioOS specification.

Future applications such as:

- Anu Sabi
- Lutopia
- Rambler Engine
- POS System
- Attendance Platform

can all emit standardized events while maintaining application-specific domains.

This allows StudioOS to build unified dashboards, analytics pipelines, and AI models across multiple applications.

# Aggregated Metrics

Examples include:

- Daily Active Users (DAU)
- Monthly Active Users (MAU)
- Average Session Length
- Games Per Day
- Average Score
- Completion Rate
- Hint Usage
- Skip Rate
- Badge Unlock Rate
- Retention
- Churn Indicators

Only aggregated data should be used for product reporting whenever possible.

---

# Gameplay Analytics

Examples:

- Difficulty distribution
- Category popularity
- Average accuracy
- Phrase completion rate
- Time-to-answer
- Streak behavior
- Reward distribution

Gameplay analytics help balance the game over time.

---

# Content Analytics

The service measures:

- Most played categories
- Most skipped phrases
- Most difficult phrases
- Completion percentages
- Daily challenge participation
- Seasonal event engagement

These insights guide future content development.

---

# Performance Analytics

Performance metrics may include:

- App startup time
- Synchronization duration
- Crash frequency
- Memory usage
- Offline duration
- API latency
- Download speed

Performance metrics improve application quality.

---

# Funnel Analysis

Future funnels may include:

```
Install

↓

First Launch

↓

First Game

↓

Daily Challenge

↓

Account Registration

↓

Returning Player
```

Funnels help identify areas for product improvement.

---

# Retention Analysis

Retention metrics may include:

- Day 1
- Day 7
- Day 30
- Day 90

Long-term retention provides insight into player engagement.

---

# AI Integration

Analytics data may support:

- Difficulty balancing
- Phrase recommendations
- Personalized content
- Event optimization
- Churn prediction
- Engagement forecasting

AI should consume aggregated analytics through controlled interfaces.

---

# Privacy

Analytics should follow these principles:

- Data minimization
- User transparency
- Secure transmission
- Encryption
- Configurable analytics preferences
- Compliance with applicable privacy regulations

Personally identifiable information should be collected only when necessary.

---

# Security

Analytics ingestion should include:

- Authentication
- Validation
- Rate limiting
- Duplicate detection
- Audit logging

Malformed or suspicious events should be rejected.

---

# Reporting

Future dashboards may include:

- Executive Dashboard
- Gameplay Dashboard
- Content Dashboard
- Player Growth Dashboard
- Technical Health Dashboard
- Event Dashboard

Reports should support multiple time ranges and filters.

---

# Scalability

The Analytics Service should scale from:

```
Thousands of Events

↓

Millions of Events

↓

Billions of Events
```

Processing pipelines should remain horizontally scalable.

---

# Future Enhancements

Potential future additions include:

- Real-time dashboards
- Predictive analytics
- Cohort analysis
- Heatmaps
- Experiment (A/B) analysis
- AI-powered anomaly detection
- Live event monitoring
- Data warehouse integration

These enhancements should build upon the event-driven architecture.

---

# Relationship to Other Services

The Analytics Service receives events from:

- Game Service
- Leaderboard Service
- Content Service
- Notification Service
- Authentication Service
- Sync Engine
- Admin Portal

Analytics is primarily a consumer of events rather than an owner of gameplay data.

---

# Related Documents

- 07_GAME_SERVICES.md
- 08_LEADERBOARD_SERVICE.md
- 09_CONTENT_SERVICE.md
- 11_SYNC_ENGINE.md
- 12_NOTIFICATION_SERVICE.md
- 13_ADMIN_PORTAL.md

---

# Revision History

## Version 1.0.0

- Defined the Analytics Service architecture.
- Documented event collection, aggregation, reporting, gameplay metrics, content analytics, performance monitoring, privacy principles, AI integration, scalability, and future analytics capabilities.