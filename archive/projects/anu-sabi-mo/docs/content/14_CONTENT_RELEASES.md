# 📦 Content Releases

> **Defines how content is packaged, tested, approved, distributed, and maintained throughout its release lifecycle in Anu Sabi.**

---

# Purpose

Content releases provide a structured process for delivering new and updated content to players while ensuring stability, compatibility, and quality.

The release process applies independently of application releases.

Content may evolve more frequently than the application itself.

---

# Design Goals

The release process should be:

- Predictable
- Repeatable
- Safe
- Traceable
- Storage-independent
- Automation-friendly

Every release should follow a documented approval workflow.

---

# Release Lifecycle

```
Content Creation

↓

Review

↓

Approval

↓

Packaging

↓

Testing

↓

Release Candidate

↓

Production Release

↓

Monitoring

↓

Maintenance
```

Every stage contributes to release quality.

---

# Release Types

## Major Release

Introduces significant new content.

Examples:

- Large phrase expansions
- New game categories
- Major localization support
- Rambler Engine improvements

Major releases may coincide with application updates.

---

## Minor Release

Adds compatible content without changing existing structures.

Examples:

- New phrase packs
- Seasonal content
- Educational collections
- Achievement additions

Minor releases should not require database migrations.

---

## Patch Release

Provides corrections and refinements.

Examples:

- Typo fixes
- Metadata updates
- Difficulty balancing
- Duplicate removal
- Editorial corrections

Patch releases should avoid introducing new gameplay features.

---

# Release Components

A release may contain:

- Phrase updates
- Category updates
- Localization packs
- Metadata revisions
- Rambler datasets
- AI-assisted improvements
- Editorial corrections

Each component should be independently identifiable.

---

# Release Packaging

Current implementation:

```
TypeScript Files

↓

Application Build

↓

Player
```

Future implementation:

```
Approved Content

↓

SQLite Package

↓

Neon Repository

↓

Player
```

The packaging mechanism may change, but the release workflow remains consistent.

---

# Release Candidate

Before production, every release should enter a Release Candidate (RC) phase.

The RC should verify:

- Editorial quality
- Gameplay quality
- Metadata consistency
- Localization integrity
- Version compatibility

Only approved RCs become production releases.

---

# Testing

Release testing should include:

- Gameplay validation
- Difficulty verification
- Duplicate detection
- Metadata validation
- Localization review
- Compatibility testing

Testing should occur before player distribution.

---

# Compatibility Checks

Before installation, future systems may verify:

- Content version
- Schema version
- Localization version
- SQLite schema compatibility
- Application compatibility

Incompatible releases should not be installed.

---

# Distribution

Current distribution:

```
TypeScript Content

↓

Application Build

↓

Player Device
```

Future distribution:

```
Neon Repository

↓

Update Service

↓

SQLite Cache

↓

Player Device
```

Cloud distribution should support incremental updates whenever practical.

---

# Offline Support

Offline players should continue using their installed content.

Future SQLite storage should:

- Cache installed releases
- Validate release integrity
- Support offline gameplay
- Synchronize updates when connectivity returns

Offline play remains a primary design objective.

---

# Rollback Strategy

Every release should support rollback when necessary.

Rollback may restore:

- Previous phrase library
- Previous metadata
- Previous localization
- Previous category mappings

Rollback procedures should preserve player progress whenever possible.

---

# Release Notes

Each release should include:

- Version number
- Release date
- Summary
- Added content
- Updated content
- Removed content
- Known issues
- Compatibility notes

Release notes provide transparency for both developers and players.

---

# Monitoring

After release, content performance should be monitored.

Examples include:

- Solve rates
- Hint usage
- Skip frequency
- Difficulty trends
- Error reports
- Player feedback

Monitoring helps identify improvements for future releases.

---

# Emergency Releases

Critical issues may require expedited releases.

Examples include:

- Broken phrase data
- Incorrect answers
- Offensive content
- Metadata corruption
- Localization errors

Emergency releases should follow a streamlined but documented approval process.

---

# Future Automation

Future release automation may include:

- Automated packaging
- Continuous integration
- Release validation
- AI-assisted testing
- Incremental synchronization
- Scheduled content publishing

Automation should improve reliability while maintaining human oversight.

---

# Related Documents

- 07_CONTENT_REVIEW_PROCESS.md
- 08_CONTENT_PIPELINE.md
- 11_RAMBLER_CONTENT.md
- 12_AI_ASSISTED_CONTENT.md
- 13_CONTENT_VERSIONING.md
- 15_CONTENT_ANALYTICS.md

---

# Revision History

## Version 1.0.0

- Defined the official content release lifecycle.
- Documented release types, testing, compatibility checks, offline support, rollback strategy, monitoring, and future SQLite/Neon distribution architecture.