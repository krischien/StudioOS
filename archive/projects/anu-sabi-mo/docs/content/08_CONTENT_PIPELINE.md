# 🚀 Content Pipeline

> **Defines the complete lifecycle of content from creation to deployment, synchronization, and player delivery within Anu Sabi.**

---

# Purpose

The Content Pipeline describes how phrases move from initial creation to becoming playable in the game.

It provides a repeatable process that supports:

- Content creation
- Validation
- Packaging
- Distribution
- Updates
- Future synchronization

The pipeline is designed to support both the current offline architecture and future online services.

---

# Design Principles

The pipeline should be:

- Repeatable
- Reliable
- Scalable
- Modular
- Storage-independent
- Automation-friendly

Each stage should have a clearly defined responsibility.

---

# High-Level Pipeline

```
Idea

↓

Authoring

↓

Validation

↓

Editorial Review

↓

Gameplay Review

↓

Approval

↓

Packaging

↓

Distribution

↓

Player Device

↓

Analytics

↓

Continuous Improvement
```

Each stage contributes to overall content quality.

---

# Stage 1: Authoring

Content is initially created.

Possible sources include:

- Human writers
- Internal design team
- AI-assisted generation
- Rambler Engine generation
- Educational partners
- Community submissions

New content begins as a draft.

---

# Stage 2: Validation

Before review, automated validation checks may verify:

- Required metadata
- Duplicate IDs
- Missing fields
- Formatting
- Structural consistency

Validation reduces manual review effort.

---

# Stage 3: Editorial Review

Editorial review ensures:

- Correct spelling
- Proper grammar
- Consistent formatting
- Official naming
- Metadata completeness

Editorial quality should be independent of gameplay quality.

---

# Stage 4: Gameplay Review

Gameplay review evaluates:

- Difficulty
- Recognition fairness
- Hint quality
- Gibberish quality
- Category assignment
- Player experience

Only gameplay-ready phrases move forward.

---

# Stage 5: Approval

Approved content becomes eligible for release.

Approval indicates that the phrase satisfies both editorial and gameplay standards.

---

# Stage 6: Packaging

Approved phrases are grouped into release packages.

Examples:

- Core Library
- Category Packs
- Educational Packs
- Seasonal Packs
- Premium Packs
- Event Packs

Packaging separates content management from application updates.

---

# Stage 7: Distribution

Current implementation:

```
TypeScript Data Files

↓

Application Build

↓

Player Device
```

Future implementation:

```
Content Service

↓

SQLite Cache

↓

Cloud Sync (Neon)

↓

Player Device
```

The logical workflow remains unchanged regardless of storage technology.

---

# Current Architecture

Today, the pipeline operates entirely offline.

```
Phrase Authoring

↓

TypeScript Files

↓

Vite Build

↓

Application Bundle

↓

Player
```

All phrases are bundled directly with the application.

---

# Planned Architecture

Future versions may introduce online synchronization.

```
Content Repository

↓

Validation

↓

Neon Database

↓

API

↓

SQLite Cache

↓

Player
```

SQLite will provide fast offline access, while Neon will act as the cloud source of truth.

---

# Content Updates

Content updates may be delivered through:

- Full application updates
- Downloadable content packs
- Cloud synchronization
- Seasonal releases
- Premium downloads

The update mechanism should not require changes to the logical content structure.

---

# Offline Support

Offline functionality remains a core design goal.

When offline, the application should use:

- Local TypeScript data (current implementation)
- SQLite cache (future implementation)

Players should always have access to installed content without requiring an internet connection.

---

# AI Integration

AI may assist throughout the pipeline by:

- Generating draft phrases
- Suggesting metadata
- Estimating difficulty
- Detecting duplicates
- Performing editorial checks

AI supports the workflow but does not replace human approval.

---

# Rambler Engine Integration

The Rambler Engine integrates at the authoring stage.

```
Rambler Engine

↓

Generate Candidate Phrase

↓

Validation

↓

Editorial Review

↓

Gameplay Review

↓

Approval
```

Generated content should follow the same standards as manually authored content.

---

# Version Control

Every content release should include:

- Release version
- Content version
- Change summary
- Compatibility information

Versioning enables safe updates and rollback if necessary.

---

# Monitoring

After deployment, content performance may be monitored using:

- Solve rates
- Hint usage
- Skip frequency
- Completion times
- Player feedback
- Difficulty analytics

These insights inform future revisions.

---

# Future Automation

The pipeline is designed to support increasing levels of automation.

Potential enhancements include:

- Automated validation
- AI-assisted review
- Continuous integration checks
- Content packaging automation
- Cloud publishing
- Analytics dashboards

Automation should improve efficiency while preserving quality.

---

# Related Documents

- 03_CONTENT_STRUCTURE.md
- 06_EDITORIAL_STANDARDS.md
- 07_CONTENT_REVIEW_PROCESS.md
- 11_RAMBLER_CONTENT.md
- 12_AI_ASSISTED_CONTENT.md
- 13_CONTENT_VERSIONING.md
- 14_CONTENT_RELEASES.md

---

# Revision History

## Version 1.0.0

- Defined the complete content pipeline from creation through deployment.
- Documented the current offline workflow using TypeScript data files.
- Documented the planned architecture using SQLite for offline storage and Neon for cloud synchronization.
- Established integration points for AI-assisted workflows and the Rambler Engine.