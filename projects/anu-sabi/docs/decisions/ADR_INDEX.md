# Architecture Decision Records — Anu-Sabi

> Index of significant architectural decisions for the Anu-Sabi project.  
> **Last updated:** 2026-07-08

---

## ADR format

Each ADR documents: **Context**, **Decision**, **Consequences**, **Status**.

---

## ADR-001: Client-only localStorage architecture

| Field | Value |
|-------|-------|
| **Status** | Accepted |
| **Date** | TBD — requires confirmation |
| **Source** | `src/data/*.ts` — all persistence modules |

### Context

Anu-Sabi is a casual mobile word game that must work offline and ship quickly without backend infrastructure. Player data includes profile, scores, badges, settings, and game history.

### Decision

Store all persistent player data in **browser `localStorage`** via pure functions in `src/data/` modules. No SQLite, IndexedDB, or server database.

### Consequences

- **Positive:** Zero backend cost; works offline; simple deployment; fast iteration
- **Negative:** No cross-device sync; data lost if storage cleared; no real online leaderboard; storage size limits apply
- **Neutral:** Profile fields merge with defaults on load (implicit schema evolution)

---

## ADR-002: React SPA + Capacitor mobile wrapper

| Field | Value |
|-------|-------|
| **Status** | Accepted |
| **Date** | TBD — requires confirmation |
| **Source** | `capacitor.config.ts`, `android/`, `ios/`, `package.json` |

### Context

The game needs to run on web (development) and ship to Android/iOS app stores with a single codebase.

### Decision

Build a **React + Vite SPA** as the sole application codebase. Wrap with **Capacitor 7.5** for native distribution. Native projects live in `android/` and `ios/`. Web assets built to `dist/` and synced via `cap sync`.

### Consequences

- **Positive:** One codebase for web + mobile; web dev tooling (HMR, Vite)
- **Negative:** Performance limited to WebView; native APIs require Capacitor plugins (none custom today)
- **Config:** `appId: com.sabimoano.game`, `appName: Sabi Mo Ano`, `webDir: dist`

---

## ADR-003: Static phrase database

| Field | Value |
|-------|-------|
| **Status** | Accepted |
| **Date** | TBD — requires confirmation |
| **Source** | `src/data/phrases.ts` |

### Context

Game content consists of `{ gibberish, answer, category }` pairs that must be validated at answer-check time. Content volume at launch: 500 phrases.

### Decision

Store all phrases as a **static TypeScript array** compiled into the bundle. Shuffle at runtime via `getPhrases()`. No external CMS, JSON files, or API for content delivery.

### Consequences

- **Positive:** No network dependency; instant load; simple validation
- **Negative:** Content updates require app rebuild; bundle size grows with content; no per-user content personalization
- **Future hook:** `getPhrases()` signature accepts category + count — swappable implementation possible

---

## ADR-004: Documentation-first StudioOS integration

| Field | Value |
|-------|-------|
| **Status** | Accepted |
| **Date** | 2026-07-08 |
| **Source** | `projects/anu-sabi/` documentation tree |

### Context

Anu-Sabi is an active development project within the StudioOS repository. Technical knowledge was scattered (`docs/`, `NEXT_STEPS.md`, Lovable template README) without a single authoritative structure.

### Decision

Create a **StudioOS documentation tree** at `projects/anu-sabi/` with folders for architecture, implementation, engineering, modules, requirements, roadmap, testing, decisions, research, vision, and deployment. Application source remains at repository root. Documentation describes **current implementation only** — TBD where features do not exist.

### Consequences

- **Positive:** Single entry point for StudioOS; clear separation of docs vs source; maturity-aware (no fabricated features)
- **Negative:** Two doc locations temporarily (`docs/` at root and `projects/anu-sabi/`); requires maintenance discipline
- **Rule:** Do not modify application source when updating StudioOS docs

---

## ADR-005: Three-phase product delivery (Offline → Online → Party)

| Field | Value |
|-------|-------|
| **Status** | Accepted |
| **Date** | 2026-07-08 |
| **Source** | [ROADMAP.md](../roadmap/ROADMAP.md), [VISION.md](../vision/VISION.md) |

### Context

Anu-Sabi will grow from a local single-player game to connected online play and local Bluetooth party mode. Shipping everything at once risks scope creep and delays a playable product.

### Decision

Deliver in **three product phases**:

1. **Phase 1 — Offline mode** — Single-player, `localStorage`, no network. **First milestone:** offline playable and shippable.
2. **Phase 2 — Online mode** — Backend, accounts, real leaderboard, cloud sync, social features.
3. **Phase 3 — Party mode (Bluetooth)** — Local multiplayer with nearby players via Bluetooth.

Phase 2 and 3 do not start until the prior phase milestone is met (Phase 1 is active now).

### Consequences

- **Positive:** Clear engineering focus; offline-first matches current architecture; reduces premature backend work
- **Negative:** Stub leaderboard/friends UI may confuse users until Phase 2
- **Neutral:** Phase 1 codebase already aligns with offline architecture (ADR-001)

---

## Future ADRs (not yet written)

| Topic | Status |
|-------|--------|
| Rambler Engine integration | Planned — research only |
| Backend API adoption | TBD — no backend exists |
| Analytics provider selection | TBD — not integrated |
| Bluetooth party mode | Phase 3 — not in repository |

---

*When adding ADRs, insert newest first above "Future ADRs".*
