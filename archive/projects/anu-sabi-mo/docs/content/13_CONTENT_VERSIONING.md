# 🏷️ Content Versioning

> **Defines how content versions are identified, tracked, managed, and migrated throughout the lifecycle of Anu Sabi.**

---

# Purpose

Content versioning ensures that all phrase libraries, metadata, categories, and related assets can evolve safely without breaking compatibility.

A structured versioning strategy enables:

- Safe updates
- Rollbacks
- Compatibility checks
- Analytics comparisons
- Synchronization
- Offline migration

Versioning applies to content independently of the application version.

---

# Design Goals

The versioning system should be:

- Predictable
- Traceable
- Backward compatible where practical
- Storage-independent
- Automation-friendly

Versioning should remain consistent regardless of where content is stored.

---

# Version Scope

Content versioning applies to:

- Phrase libraries
- Categories
- Metadata
- Localization packs
- Difficulty models
- Rambler datasets
- AI-generated content
- Content packs

Application versioning is managed separately.

---

# Version Format

Content versions should follow Semantic Versioning.

```
MAJOR.MINOR.PATCH
```

Example:

```
1.0.0
1.1.0
1.2.3
2.0.0
```

---

# Version Rules

## MAJOR

Increment when introducing breaking changes.

Examples:

- Metadata redesign
- Category restructuring
- Phrase schema changes
- Database compatibility changes

---

## MINOR

Increment when adding compatible features.

Examples:

- New categories
- New phrase packs
- New achievements
- New localization packs

---

## PATCH

Increment for fixes.

Examples:

- Typographical corrections
- Metadata corrections
- Difficulty adjustments
- Duplicate removal

PATCH releases should not introduce breaking changes.

---

# Phrase Versioning

Each phrase should maintain its own revision history.

Example metadata:

```
Phrase ID

↓

Version

↓

Created Date

↓

Last Updated

↓

Status
```

This enables tracking of individual phrase changes over time.

---

# Content Pack Versioning

Each content pack should have its own version.

Examples:

```
Core Library

Version 1.3.0

Category Pack

Version 2.1.0

Educational Pack

Version 1.0.2
```

Independent versioning allows packs to evolve separately.

---

# Metadata Versioning

Metadata changes should also be tracked.

Examples include:

- Category updates
- Difficulty revisions
- Localization updates
- Tags
- Editorial notes

Metadata evolution should not require new phrase identifiers.

---

# Storage Independence

The versioning model should remain identical regardless of storage technology.

Current implementation:

```
TypeScript Files

↓

Version Metadata

↓

Application Build
```

Future implementation:

```
SQLite

↓

Version Metadata

↓

Neon Synchronization
```

Only the storage layer changes.

---

# Compatibility

Applications should verify compatibility before loading content.

Compatibility checks may include:

- Schema version
- Content version
- Localization version
- Database version

Unsupported content should be rejected gracefully.

---

# Migration

Future migrations may include:

```
Old Content

↓

Migration Rules

↓

Updated Content

↓

Validation

↓

Player
```

Migration should preserve player progress whenever possible.

---

# Rollback

If a release introduces issues, content should support rollback.

Rollback should restore:

- Previous phrase versions
- Previous metadata
- Previous localization
- Previous category mappings

Rollback procedures should minimize disruption for players.

---

# SQLite Support

Future offline storage may maintain version information inside SQLite.

Examples include:

- Content version
- Schema version
- Installed pack versions
- Last synchronization timestamp

SQLite enables local validation before loading content.

---

# Neon Synchronization

Future cloud synchronization should compare versions before downloading updates.

```
Neon

↓

Version Comparison

↓

Changed Content

↓

SQLite Cache

↓

Player
```

Only modified content should be synchronized whenever practical.

---

# AI Integration

AI-assisted tools should reference content versions when:

- Updating metadata
- Suggesting edits
- Recommending retirement
- Detecting duplicates
- Creating revisions

Version awareness improves traceability.

---

# Analytics Integration

Analytics should record the content version used during gameplay.

This enables comparison between releases.

Examples:

- Solve rate by version
- Difficulty by version
- Hint usage by version
- Category performance by version

Historical analytics remain meaningful after updates.

---

# Release Documentation

Each release should include:

- Version number
- Release date
- Summary
- Added content
- Updated content
- Removed content
- Compatibility notes

Release notes improve transparency.

---

# Related Documents

- 08_CONTENT_PIPELINE.md
- 09_LOCALIZATION.md
- 11_RAMBLER_CONTENT.md
- 12_AI_ASSISTED_CONTENT.md
- 14_CONTENT_RELEASES.md
- 15_CONTENT_ANALYTICS.md

---

# Revision History

## Version 1.0.0

- Defined the official content versioning strategy.
- Established semantic versioning, compatibility rules, migration workflow, rollback procedures, SQLite support, Neon synchronization, and analytics integration.