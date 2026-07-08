# Architecture & Product Decision Log — Anu Sabi

> Record of significant decisions with context, options considered, and rationale.

**Status:** Living document  
**Owner:** _TBD_  
**Last updated:** _YYYY-MM-DD_

---

## Format

Use the template below for each decision.

## ADR-001: Client-only architecture (localStorage)

**Date:** _TBD_  
**Status:** Accepted  
**Deciders:** _TBD_

### Context

The game stores all player data, scores, badges, and settings locally without a backend.

### Decision

Use `localStorage` via `src/data/*` modules for all persistence.

### Consequences

- No online leaderboard or account sync without future backend work.
- Fast development and offline-capable by default.

---

## ADR-002: Daily Streak naming consolidation

**Date:** _TBD_  
**Status:** Accepted  
**Deciders:** _TBD_

### Context

"Daily Reward" and "Daily Streak" referred to the same 5-day login reward system.

### Decision

Standardize on **Daily Streak**; route `/daily-streak`; redirect `/daily-reward`.

### Consequences

- Single naming convention across UI and docs.
- Profile link updated to "Daily Streak".

---

<!-- Add new decisions above this line, newest first. -->
