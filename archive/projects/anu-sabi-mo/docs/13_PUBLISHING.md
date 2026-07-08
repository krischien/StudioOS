---
Document ID: DOC-012
Title: Publishing & Release Management
Version: 1.0.0
Status: CURRENT
Owner: Kristian Arendain
Maintainer: Ziv (ChatGPT)
Last Updated: 2026-07-07

Purpose:
Define the release, publishing, deployment, maintenance, and post-launch processes for Anu Sabi. This document establishes how the game moves from development into production while maintaining quality, stability, and a positive player experience.

Related Documents:
- README.md
- ROADMAP.md
- PROJECT_STATUS.md
- releases/
- testing/
---

# 🚀 Publishing & Release Management

> *Shipping is not the end of development. It is the beginning of learning from players.*

---

# Purpose

This document defines the complete publishing lifecycle of Anu Sabi, from internal testing through public release and ongoing maintenance.

It establishes a repeatable release process that ensures every version meets quality standards before reaching players.

---

# Release Philosophy

Every release should:

- Improve the player experience.
- Maintain stability.
- Avoid introducing unnecessary risk.
- Be fully documented.
- Include a rollback plan if required.

Quality is more important than release frequency.

---

# Release Stages

Every version progresses through the following stages:

```text
Planning
      ↓
Development
      ↓
Internal Testing
      ↓
Bug Fixing
      ↓
Release Candidate
      ↓
Final QA
      ↓
Production Release
      ↓
Monitoring
      ↓
Maintenance
```

---

# Versioning

Anu Sabi follows **Semantic Versioning (SemVer)**.

Format:

```text
MAJOR.MINOR.PATCH
```

Examples:

```text
1.0.0
1.1.0
1.2.5
2.0.0
```

### Major

Breaking changes or significant new features.

Example:

```text
2.0.0
```

---

### Minor

New functionality while maintaining backward compatibility.

Example:

```text
1.4.0
```

---

### Patch

Bug fixes and small improvements.

Example:

```text
1.4.3
```

---

# Release Types

## Alpha

Internal development only.

Purpose:

- Feature validation
- Early testing
- Rapid iteration

---

## Beta

Limited external testing.

Purpose:

- Gather player feedback
- Discover edge cases
- Evaluate balance

---

## Release Candidate (RC)

Feature complete.

Purpose:

- Final QA
- Performance validation
- Regression testing

---

## Production

Public release.

Purpose:

- Stable gameplay
- High reliability
- Full player support

---

# Release Checklist

Before every release, verify:

## Gameplay

- Core gameplay works correctly.
- No progression blockers.
- Difficulty reviewed.

---

## UI / UX

- Navigation verified.
- Responsive layouts checked.
- Accessibility reviewed.

---

## Content

- Phrase packs validated.
- Spelling checked.
- Metadata complete.

---

## Performance

- Startup time acceptable.
- No memory leaks.
- Smooth gameplay.
- Stable frame rate.

---

## Security

- Authentication verified.
- Sensitive data protected.
- Security rules reviewed.

---

## Documentation

Confirm that:

- Changelog updated.
- Documentation synchronized.
- Architecture changes documented.
- Decision records completed.

---

# Publishing Targets

Current

- Android (Google Play)

Planned

- iOS (Apple App Store)
- Web Demo

Future

- Desktop
- Educational Edition

---

# Store Assets

Each release should include updated:

- App icon
- Feature graphic
- Screenshots
- Promotional artwork
- Store description
- Privacy Policy
- Terms of Service

Marketing assets should accurately represent the current version.

---

# Changelog

Every release requires a changelog.

Template:

```text
Version

Added

Changed

Improved

Fixed

Known Issues
```

Detailed release notes are maintained within:

```text
releases/
```

---

# Hotfix Process

Critical production issues follow this workflow:

```text
Bug Report

↓

Investigation

↓

Fix

↓

Testing

↓

Hotfix Release

↓

Monitoring
```

Hotfixes should be narrowly scoped to reduce deployment risk.

---

# Rollback Strategy

If a release introduces severe issues:

1. Pause further rollout.
2. Investigate the issue.
3. Restore the previous stable version if necessary.
4. Publish a hotfix.
5. Document lessons learned.

---

# Post-Release Monitoring

After deployment, monitor:

- Crash reports
- Performance
- Player feedback
- Store reviews
- Analytics
- Bug reports
- Retention metrics

Early monitoring helps identify issues before they affect a larger audience.

---

# Community Communication

Release communication should include:

- Patch notes
- Feature highlights
- Known issues
- Planned improvements
- Community acknowledgements (where appropriate)

Clear communication builds player trust.

---

# Maintenance

Maintenance activities include:

- Bug fixes
- Content updates
- Dependency updates
- Security patches
- Performance improvements

Regular maintenance ensures the game remains stable and enjoyable.

---

# Success Metrics

A release is considered successful when:

- Crash rates remain low.
- Player feedback is positive.
- No critical regressions are introduced.
- Documentation matches the shipped version.
- Rollout completes successfully.

---

# Related Directories

Detailed release artifacts are maintained within:

```text
releases/
```

Testing documentation is maintained within:

```text
testing/
```

Marketing assets are maintained within:

```text
assets/
```

---

# Related Documents

- **README.md**
- **ROADMAP.md**
- **PROJECT_STATUS.md**
- **10_SYSTEM_ARCHITECTURE.md**

---

# Revision History

## Version 1.0.0

- Established the official publishing and release management process for Anu Sabi.
- Defined release stages, semantic versioning, quality gates, deployment workflow, rollback strategy, and post-release maintenance.