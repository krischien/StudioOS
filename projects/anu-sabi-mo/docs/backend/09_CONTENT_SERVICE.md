# Content Service

> **Defines the architecture, lifecycle, synchronization, management, and future evolution of game content within the Anu Sabi platform.**

---

# Purpose

The Content Service manages all playable content distributed to Anu Sabi clients.

It provides a centralized platform for creating, organizing, validating, distributing, and updating game content while preserving the Offline First architecture.

The service enables continuous content expansion without requiring application updates.

---

# Design Goals

The Content Service should be:

- Offline First
- Modular
- Versioned
- Scalable
- Secure
- AI Ready
- Extensible
- Editorial Friendly

Content updates should be independent of application releases.

---

# Current Implementation

Current content exists entirely inside the application.

```
React

↓

phrases.ts

↓

Game
```

Current characteristics:

- Hardcoded phrase library
- Static categories
- No synchronization
- No remote updates
- No content versioning
- No editorial workflow

Content changes currently require a new application build.

---

# Target Architecture

```
Editorial Portal

↓

Content API

↓

Content Service

↓

Neon PostgreSQL

↓

Sync Engine

↓

SQLite

↓

Game Client
```

The Content Service becomes the single source of truth for all playable content.

---

# Responsibilities

The Content Service manages:

- Phrase libraries
- Categories
- Decks
- Daily challenges
- Seasonal content
- Difficulty metadata
- Localization
- Content validation
- Versioning
- Distribution

Gameplay remains independent of the service after content is downloaded.

---

# Content Types

Future supported content includes:

- Standard phrases
- Pinoy phrases
- World phrases
- Category packs
- Event packs
- Premium packs
- Educational packs
- Community-created packs
- Rambler-generated content

Each content type follows the same lifecycle.

---

# Content Structure

Example hierarchy:

```
Content

├── Categories
│
├── Decks
│
├── Phrase Packs
│
├── Challenges
│
├── Events
│
└── Metadata
```

The hierarchy supports future expansion without structural redesign.

---

# Categories

Examples include:

- Pinoy
- World
- Movies
- Music
- Food
- Sports
- Science
- Technology
- Animals
- Geography

New categories can be published without updating the client.

---

# Metadata

Each content item may include:

- Content ID
- Category
- Difficulty
- Language
- Tags
- Version
- Status
- Author
- Creation Date
- Last Updated

Metadata improves organization and discoverability.

---

# Versioning

Every content item should include a version number.

```
Phrase

↓

Version

↓

Validation

↓

Distribution
```

Versioning enables incremental updates instead of downloading the entire library.

---

# Content Manifest

The Content Service publishes a lightweight **Content Manifest** that serves as the authoritative index of all available game content.

Rather than requesting every content endpoint individually, clients first download the manifest to determine what content requires synchronization.

The manifest significantly reduces bandwidth usage while enabling efficient incremental updates.

## Responsibilities

The Content Manifest contains metadata such as:

- Global Content Version
- Manifest Version
- Available Content Packs
- Content Categories
- Pack Versions
- Incremental Patch Information
- SHA-256 Integrity Hashes
- Required Minimum Client Version
- Optional Dependencies
- Deprecated Content
- Seasonal Availability

The manifest contains metadata only and does not include playable content.

---

## Synchronization Workflow

```
Client Startup

↓

Download Manifest

↓

Compare Local Manifest

↓

Determine Differences

↓

Download Changed Packs

↓

Verify Hashes

↓

Update SQLite

↓

Ready for Gameplay
```

Only modified content should be downloaded.

---

## Incremental Updates

Instead of replacing the complete phrase library, updates are distributed as incremental patches whenever possible.

Example:

```
Manifest v12

↓

Player has v10

↓

Download Changes

↓

Apply Patch

↓

Manifest v12 Installed
```

Incremental synchronization minimizes network traffic while improving update speed.

---

## Integrity Verification

Each downloadable content package includes a cryptographic checksum.

Example:

```
Pack

↓

SHA-256 Hash

↓

Verification

↓

Install
```

Corrupted or incomplete downloads should automatically be rejected.

---

## Dependency Management

Content packs may depend on other packs.

Example:

```
Base Pack

↓

Holiday Pack

↓

Christmas Challenge Pack
```

Dependencies ensure required assets are installed before optional expansions.

---

## Client Compatibility

The manifest specifies the minimum compatible client version.

Older applications may continue using supported content while newer features remain unavailable until the application is upgraded.

---

## Future StudioOS Integration

The Content Manifest architecture is intended to become a shared StudioOS component.

Future StudioOS applications may publish their own manifests while sharing the same synchronization engine.

Examples include:

- Anu Sabi
- Rambler Engine
- Lutopia
- Future educational games

Using a common manifest format simplifies synchronization across the StudioOS ecosystem.

---

# Content Distribution

Content distribution follows:

```
Editorial Portal

↓

Content Service

↓

Sync Engine

↓

SQLite

↓

Game Client
```

Only changed content should be synchronized.

---

# Offline Availability

Downloaded content remains available offline.

```
SQLite

↓

Gameplay

↓

Synchronization Later
```

Players should never lose access to previously downloaded content.

---

# Daily Challenges

Daily challenge content is generated by the backend.

Workflow:

```
Content Library

↓

Challenge Generator

↓

Daily Challenge

↓

Player Download
```

Challenges should remain consistent for all players during the same period.

---

# Seasonal Content

Seasonal releases may include:

- Holiday phrases
- Anniversary packs
- Community events
- Special categories
- Limited-time decks

Expired content may remain archived for historical purposes.

---

# Localization

Future content may support multiple languages.

Each phrase may include:

- Original Language
- Localized Variants
- Regional Metadata

Localization should not require duplicate content structures.

---

# Editorial Workflow

Future publishing workflow:

```
Draft

↓

Review

↓

Approved

↓

Published

↓

Archived
```

Editorial approval should occur before public release.

---

# AI Integration

Future AI services may assist with:

- Phrase generation
- Difficulty estimation
- Duplicate detection
- Category suggestions
- Metadata generation
- Translation assistance

Human editorial approval remains the final publishing step.

---

# Rambler Engine Integration

Future Rambler Engine content may generate:

- Procedural phrases
- Dynamic challenges
- Adaptive difficulty
- Endless content streams

Generated content should follow the same validation pipeline as manually authored content.

---

# Content Validation

Before publication, content should be checked for:

- Duplicate phrases
- Offensive language
- Incorrect metadata
- Category consistency
- Difficulty balance
- Formatting errors

Validation improves overall content quality.

---

# Content Analytics

Analytics may include:

- Most Played Categories
- Completion Rates
- Difficulty Distribution
- Phrase Accuracy
- Hint Usage
- Skip Rates

Analytics help improve future content.

---

# Security

Editorial operations should require authentication and authorization.

Only approved editors should be able to:

- Create content
- Modify content
- Publish content
- Archive content

Administrative operations should be fully audited.

---

# Scalability

The Content Service should support:

```
Hundreds

↓

Thousands

↓

Millions of Content Items
```

The architecture should accommodate long-term content growth.

---

# Future Enhancements

Potential future additions include:

- User-generated content
- Community voting
- Editorial dashboards
- AI-assisted translations
- Dynamic difficulty balancing
- Personalized content recommendations
- Live event publishing
- Marketplace content packs

These enhancements should build upon the existing architecture.

---

# Relationship to Other Services

The Content Service interacts with:

- Game Service
- Sync Engine
- Analytics Service
- Notification Service
- Admin Portal
- Rambler Engine

Each service maintains clear ownership while sharing content through documented APIs.

---

# Related Documents

- 07_GAME_SERVICES.md
- 10_ANALYTICS_SERVICE.md
- 11_SYNC_ENGINE.md
- 12_NOTIFICATION_SERVICE.md
- 13_ADMIN_PORTAL.md
- Rambler Engine Documentation

---

# Revision History

## Version 1.0.0

- Defined the Content Service architecture.
- Documented content lifecycle, metadata, synchronization, localization, editorial workflow, AI integration, Rambler Engine integration, analytics, security, scalability, and future expansion strategy.