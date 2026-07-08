# ⚠️ Error Handling

> **Defines how errors are detected, handled, logged, and presented throughout the Anu Sabi application.**

---

# Purpose

This document establishes the error handling philosophy for Anu Sabi.

Its goals are to:

- Prevent application crashes
- Provide meaningful feedback to users
- Simplify debugging
- Maintain data integrity
- Ensure graceful recovery whenever possible

Errors should be expected, not ignored.

---

# Error Handling Philosophy

The application should:

- Fail gracefully
- Never silently discard important errors
- Preserve user progress whenever possible
- Recover automatically when safe
- Provide useful information for debugging

An error should never leave the application in an inconsistent state.

---

# Error Categories

## User Errors

Examples:

- Empty answer submission
- Invalid player name
- Invalid settings selection

Handling:

- Show a friendly message
- Allow correction
- Do not interrupt gameplay

---

## Validation Errors

Examples:

- Invalid profile data
- Corrupted localStorage
- Missing required fields

Handling:

- Validate data before use
- Restore safe defaults if necessary
- Preserve valid data where possible

---

## Storage Errors

Current storage:

- localStorage

Future storage:

- SQLite
- Neon

Possible issues:

- Corrupted JSON
- Missing keys
- Storage quota exceeded
- Database unavailable

Handling:

- Catch read/write failures
- Log technical details
- Attempt recovery
- Fall back to defaults when appropriate

---

## Runtime Errors

Examples:

- Unexpected null values
- Undefined objects
- Invalid state transitions

Handling:

- Prevent crashes through defensive programming
- Display fallback UI when appropriate
- Log sufficient context for debugging

---

## Network Errors (Future)

Future features may include:

- Authentication
- Online leaderboard
- Cloud synchronization
- Multiplayer
- AI services

Handling:

- Retry transient failures
- Detect offline mode
- Queue operations where appropriate
- Inform the user without blocking local gameplay

---

# General Principles

Always:

- Validate inputs
- Validate external data
- Check optional values
- Assume storage can fail
- Assume network requests can fail

Never assume external data is valid.

---

# Safe Defaults

When recovery is possible, use sensible defaults.

Examples:

Profile:

```typescript
DEFAULT_PROFILE
```

Settings:

```typescript
DEFAULT_GAME_SETTINGS
```

Missing values should be merged with defaults rather than replacing the entire object.

---

# localStorage Handling

Current persistence relies on localStorage.

Every read should:

- Check if data exists
- Parse JSON safely
- Catch parsing errors
- Validate structure
- Merge with defaults

Example flow:

```text
Read

↓

Parse

↓

Validate

↓

Merge Defaults

↓

Use Data
```

---

# Future SQLite Handling

When SQLite is introduced:

- Wrap transactions
- Handle migration failures
- Retry transient errors
- Roll back incomplete writes
- Preserve database integrity

---

# Future Neon Handling

Cloud synchronization should:

- Retry temporary failures
- Detect offline mode
- Queue pending operations
- Resolve synchronization conflicts
- Keep local gameplay functional

The local experience should remain usable even if cloud services are unavailable.

---

# User Messages

User-facing messages should:

- Be simple
- Avoid technical jargon
- Explain what happened
- Suggest the next step when applicable

Example:

Good:

```
Unable to save your progress.
Please try again.
```

Avoid:

```
TypeError: Cannot read property 'coins' of undefined
```

---

# Logging

Development:

Log detailed diagnostic information.

Production:

Log only necessary information.

Never expose:

- Stack traces
- Internal file paths
- Database details
- Sensitive configuration
- User secrets

---

# Error Boundaries

React Error Boundaries should be introduced for:

- Major screens
- Navigation
- Game session
- Profile
- Settings

An unexpected rendering error should never terminate the entire application.

---

# Recovery Strategy

Preferred recovery order:

```text
Retry

↓

Recover

↓

Fallback

↓

Notify User
```

Whenever possible, preserve progress before attempting recovery.

---

# Defensive Programming

Developers should:

- Check optional values
- Handle null and undefined safely
- Validate function arguments
- Avoid unsafe type assertions
- Prefer explicit checks over assumptions

---

# Future Monitoring

Future releases may integrate:

- Crash reporting
- Performance monitoring
- Analytics
- User feedback reports

Potential services include:

- Firebase Crashlytics
- Sentry
- Microsoft App Center

These services are not currently implemented.

---

# Error Handling Checklist

Before shipping a feature:

- Inputs validated
- Storage failures handled
- Recovery path defined
- User-friendly messages provided
- Unexpected states considered
- Documentation updated if new error types are introduced

---

# Related Documents

- CODING_STANDARDS.md
- TESTING_STRATEGY.md
- PERFORMANCE.md
- SECURITY.md

---

# Revision History

## Version 1.0.0

- Established the project-wide error handling philosophy.
- Documented current localStorage practices.
- Defined future strategies for SQLite, Neon, and online services.
- Added guidance for logging, recovery, and user communication.