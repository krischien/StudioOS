# 🧪 Testing Strategy

> **Defines the testing philosophy, current testing status, and long-term testing strategy for Anu Sabi.**

---

# Purpose

This document establishes how Anu Sabi should be tested throughout its development lifecycle.

Testing aims to ensure:

- Reliability
- Stability
- Maintainability
- Confidence during refactoring
- High release quality

---

# Testing Philosophy

Testing should provide confidence without slowing development.

The project favors:

- Small, focused tests
- Fast execution
- Easy maintenance
- High-value coverage

Testing should prioritize critical gameplay systems over trivial implementation details.

---

# Current Status

Current automated testing is **minimal**.

The project currently includes:

- Vitest
- Testing Library
- jsdom

At the time of writing, only placeholder tests exist.

This is expected during the current development phase.

---

# Testing Pyramid

Future testing should follow this structure:

```text
           End-to-End
          (Few Tests)

      Integration Tests

      Unit Tests (Most)
```

Most testing effort should be invested in unit tests.

---

# Testing Levels

## Unit Tests

Purpose:

Verify individual functions in isolation.

Examples:

- Score calculation
- Badge unlock logic
- Phrase validation
- Daily streak calculations
- Hint generation

These tests should execute quickly and without external dependencies.

---

## Component Tests

Purpose:

Verify React components.

Examples:

- Buttons
- Dialogs
- Forms
- Score cards
- Navigation components

Testing should focus on behavior rather than implementation details.

---

## Integration Tests

Purpose:

Verify collaboration between multiple modules.

Examples:

- Completing a game updates scores
- Badge unlocking updates profile
- Daily streak rewards update coins
- Game history is saved correctly

---

## End-to-End Tests (Future)

Purpose:

Validate complete user workflows.

Example scenarios:

- Launch application
- Play a game
- Earn rewards
- Save progress
- Restart application
- Verify persistence

Future tools may include:

- Playwright
- Cypress

---

# Priority Areas

The following systems should receive testing first:

### Gameplay

- Phrase generation
- Answer validation
- Score calculation
- Timers
- Difficulty modes

---

### Progression

- Coins
- Badges
- Ranks
- Daily streak
- Best scores

---

### Persistence

- Profile loading
- Saving profile
- Game history
- Settings
- Migration behavior

---

### Navigation

- Route transitions
- Invalid routes
- Deep linking
- Navigation state

---

# Current Tooling

| Tool | Purpose |
|------|---------|
| Vitest | Test runner |
| Testing Library | React component testing |
| jsdom | Browser simulation |

Future tooling may include:

- Playwright
- Cypress
- GitHub Actions

---

# Test Organization

Recommended structure:

```text
src/

components/
pages/
data/
hooks/

test/

unit/
integration/
fixtures/
helpers/
```

Tests should remain close to the code they validate or within dedicated test folders.

---

# Test Naming

Use descriptive names.

Example:

```text
profile.test.ts
badges.test.ts
dailyStreak.test.ts
GameScreen.test.tsx
```

Test descriptions should clearly describe expected behavior.

Example:

```text
should award 50 coins after completing a game
```

---

# Mocking

Mock only external dependencies.

Avoid mocking business logic whenever possible.

Examples of acceptable mocks:

- Browser APIs
- Timers
- Network requests
- Native Capacitor plugins

Business logic inside the Data Layer should be tested directly.

---

# Coverage Priorities

Aim to increase coverage gradually.

Suggested order:

1. Data Layer
2. Utilities
3. Custom Hooks
4. React Components
5. Full user workflows

Coverage percentage is less important than testing critical functionality.

---

# Manual Testing

Every release should include manual verification of:

- Home screen
- Gameplay
- Daily streak
- Profile
- Settings
- Achievements
- Game history
- Mobile navigation
- Offline behavior

Manual testing remains an essential part of the release process.

---

# Continuous Integration (Future)

Future CI pipelines should automatically run:

```text
Install Dependencies

↓

Lint

↓

Unit Tests

↓

Build

↓

Deploy
```

A failing test suite should block production releases.

---

# Best Practices

Tests should be:

- Independent
- Deterministic
- Fast
- Easy to read
- Easy to maintain

Avoid tests that rely on implementation details or fragile timing.

---

# Related Documents

- BUILD_DEPLOYMENT.md
- CODING_STANDARDS.md
- ERROR_HANDLING.md
- DATA_LAYER.md

---

# Revision History

## Version 1.0.0

- Established the testing philosophy for Anu Sabi.
- Documented the current testing status.
- Defined the roadmap toward comprehensive unit, integration, and end-to-end testing.