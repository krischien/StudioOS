# 📐 Coding Standards

> **Defines the coding conventions and development principles for the Anu Sabi project.**

---

# Purpose

This document establishes the coding standards used throughout the Anu Sabi codebase.

Its goal is to keep the project:

- Consistent
- Readable
- Maintainable
- Scalable
- Easy for new contributors to understand

Consistency is valued over personal preference.

---

# General Principles

Code should be:

- Simple
- Predictable
- Self-documenting
- Modular
- Easy to test
- Easy to refactor

Avoid clever code that sacrifices readability.

---

# Language

The project is written using:

- TypeScript
- React
- Modern ES Modules

All new application code should follow the existing TypeScript conventions.

---

# File Organization

Each file should have a single responsibility.

Example:

```text
components/
pages/
context/
data/
hooks/
utils/
types/
```

Avoid placing unrelated functionality into the same file.

---

# Naming Conventions

## Components

Use PascalCase.

Examples:

```text
GameScreen.tsx
PremiumTopBar.tsx
BadgeUnlockPopup.tsx
```

---

## Hooks

Use the `use` prefix.

Examples:

```text
useTimer.ts
useToast.ts
useIsMobile.ts
```

---

## Data Modules

Use descriptive names.

Examples:

```text
profile.ts
badges.ts
scores.ts
dailyStreak.ts
```

Each module should represent one business domain.

---

## Variables

Use camelCase.

Example:

```typescript
playerScore
dailyReward
bestScore
```

Avoid abbreviations unless they are widely understood.

---

## Constants

Use UPPER_SNAKE_CASE.

Example:

```typescript
DEFAULT_PROFILE
HINT_COST
MAX_HISTORY_ENTRIES
```

---

## Types and Interfaces

Use PascalCase.

Example:

```typescript
interface Profile

interface GameHistoryEntry

type Difficulty
```

---

# Functions

Functions should:

- Perform one task
- Have descriptive names
- Avoid unnecessary side effects
- Return predictable results

Prefer:

```typescript
loadProfile()
```

instead of:

```typescript
doStuff()
```

---

# Components

Components should focus on presentation.

Avoid placing business logic inside UI components.

Business logic belongs in:

```text
src/data/
```

or reusable hooks.

---

# State Management

Prefer:

1. Local state
2. Context
3. Persistent storage

Do not introduce global state unless there is a clear need.

---

# Imports

Order imports consistently:

1. React
2. Third-party libraries
3. Internal modules
4. Relative imports
5. Styles

---

# Comments

Write comments to explain **why**, not **what**.

Good:

```typescript
// Merge defaults to preserve compatibility with older profiles.
```

Avoid:

```typescript
// Increment score by one.
```

---

# Error Handling

Do not silently ignore errors.

Handle invalid data gracefully and provide safe defaults where appropriate.

See:

- ERROR_HANDLING.md

---

# Formatting

Follow the project's configured formatter and linter.

Avoid manual formatting that conflicts with automated tools.

---

# Dependencies

Before introducing a new dependency, ask:

- Does the project already solve this problem?
- Is the dependency actively maintained?
- Does it increase bundle size unnecessarily?
- Will it still be useful in a year?

Avoid adding dependencies for trivial functionality.

---

# Testing

New business logic should be designed so it can be tested independently.

Keep UI and logic separated whenever practical.

---

# Documentation

When introducing a significant architectural change:

- Update the relevant documentation.
- Keep code and documentation synchronized.
- Avoid leaving outdated architectural references.

Documentation is considered part of the implementation.

---

# Related Documents

- FRONTEND.md
- DATA_LAYER.md
- TESTING_STRATEGY.md
- ERROR_HANDLING.md
- DEPENDENCY_GUIDE.md

---

# Revision History

## Version 1.0.0

- Established coding conventions for the project.
- Defined naming, organization, and development principles.
- Reinforced separation between UI and business logic.