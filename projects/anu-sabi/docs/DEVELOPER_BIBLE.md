# Developer Bible — Anu-Sabi / SabiMo?

> **Purpose:** Authoritative reference for developers **assuming**, **maintaining**, or **rebuilding** the application from source.  
> **Last updated:** 2026-07-08  
> **Product phases:** 1 Offline (active) · 2 Online (planned) · 3 Party/Bluetooth (planned)  
> **Source of truth:** Application code at repository root (`src/`, `android/`, `ios/`).

---

## What this document is

This is the **developer-facing master index** for Anu-Sabi. Use it when you need to:

- Onboard onto an unfamiliar codebase quickly
- Rebuild the app in a new repo or stack
- Verify behavior against documented rules
- Know what is **Complete**, **Partial**, **Stub**, or **Planned**

**Companion documentation:**

| Location | Role |
|----------|------|
| `docs/developer/` | Chapter-by-chapter rebuild reference (this bible) |
| `docs/TECHNICAL_AUDIT.md` | Full codebase audit snapshot |
| `docs/00_PROJECT_OVERVIEW.md` | Product + implementation overview |
| `projects/anu-sabi/` | StudioOS living archive (mirrors much of this content) |

---

## Project identity

| Field | Value |
|-------|-------|
| UI brand | **SabiMo?** |
| Capacitor app name | **Sabi Mo Ano** |
| Package ID | `com.sabimoano.game` |
| Stack | React 18 + TypeScript 5 + Vite 5 + Capacitor 7 |
| Persistence | `localStorage` only — **no backend** |
| Content | 500 static phrases in `src/data/phrases.ts` |
| **Active phase** | **Phase 1 — Offline mode** (first milestone: offline playable) |

---

## Product phases

| Phase | Scope | Documentation |
|-------|-------|---------------|
| **1 — Offline** | Single-player, `localStorage`, no network | [ROADMAP.md](./roadmap/ROADMAP.md) |
| **2 — Online** | Backend, accounts, real leaderboard | Planned — not in repository |
| **3 — Party (Bluetooth)** | Local multiplayer | Planned — not in repository |

**Rebuild scope today:** Implement **Phase 1 only**. Skip Phase 2/3 unless explicitly scoped.

---

## Reading paths

### Path A — Assume the project (existing repo)

1. [01 — Onboarding](./developer/01_ONBOARDING.md) — install, run, build
2. [02 — Architecture](./developer/02_ARCHITECTURE.md) — how the system fits together
3. [06 — Module map](./developer/06_MODULE_MAP.md) — where code lives
4. [07 — Feature status](./developer/07_FEATURE_STATUS.md) — what works vs stub vs planned
5. [09 — Technical debt](./developer/09_TECHNICAL_DEBT.md) — known gaps before you ship changes

### Path B — Rebuild from scratch

1. [01 — Onboarding](./developer/01_ONBOARDING.md) — stack and commands
2. [02 — Architecture](./developer/02_ARCHITECTURE.md) — layers and data flow
3. [03 — Data & persistence](./developer/03_DATA_AND_PERSISTENCE.md) — every `localStorage` key and schema
4. [04 — Game rules](./developer/04_GAME_RULES.md) — scoring, badges, streaks, hints (implement exactly)
5. [05 — Routes & screens](./developer/05_ROUTES_AND_SCREENS.md) — all 15 routes
6. [08 — Rebuild guide](./developer/08_REBUILD_GUIDE.md) — ordered implementation phases
7. [07 — Feature status](./developer/07_FEATURE_STATUS.md) — skip Planned items unless required

### Path C — Game logic only

1. [04 — Game rules](./developer/04_GAME_RULES.md)
2. [03 — Data & persistence](./developer/03_DATA_AND_PERSISTENCE.md)
3. Source: `src/pages/GameScreen.tsx`, `src/data/*.ts`, `src/types/game.ts`

---

## Chapter index

| # | Document | Contents |
|---|----------|----------|
| 01 | [ONBOARDING](./developer/01_ONBOARDING.md) | Prerequisites, npm scripts, Capacitor workflow |
| 02 | [ARCHITECTURE](./developer/02_ARCHITECTURE.md) | System diagram, layers, state, build pipeline |
| 03 | [DATA & PERSISTENCE](./developer/03_DATA_AND_PERSISTENCE.md) | localStorage keys, profile schema, defaults |
| 04 | [GAME RULES](./developer/04_GAME_RULES.md) | Timer, scoring, validation, badges, economy |
| 05 | [ROUTES & SCREENS](./developer/05_ROUTES_AND_SCREENS.md) | Route table, navigation, screen responsibilities |
| 06 | [MODULE MAP](./developer/06_MODULE_MAP.md) | `src/` folder responsibilities and key files |
| 07 | [FEATURE STATUS](./developer/07_FEATURE_STATUS.md) | Complete / Partial / Stub / Planned matrix |
| 08 | [REBUILD GUIDE](./developer/08_REBUILD_GUIDE.md) | Phased rebuild order with acceptance criteria |
| 09 | [TECHNICAL DEBT](./developer/09_TECHNICAL_DEBT.md) | Known gaps, stubs, duplicate logic |

---

## Status label conventions

All developer docs use the same vocabulary:

| Label | Meaning |
|-------|---------|
| **Complete** | Fully implemented and functional locally |
| **Partial** | Works with known gaps or stub data |
| **Stub** | Placeholder UI/data only |
| **Planned** | Documented intent; no code in repository |

---

## Quick commands

```bash
npm install
npm run dev          # http://localhost:8080
npm run build
npm run cap:sync     # after build, before native run
npm run cap:open:android
```

See [01 — Onboarding](./developer/01_ONBOARDING.md) for full build and release workflow.

---

## Maintenance

When application behavior changes:

1. Update the relevant `docs/developer/` chapter
2. Update [07 — Feature status](./developer/07_FEATURE_STATUS.md) if status changes
3. Update `docs/TECHNICAL_AUDIT.md` or regenerate via audit pass
4. Mirror changes in `projects/anu-sabi/` if StudioOS docs should stay in sync

**Rule:** Do not document features that do not exist in `src/`. Mark unknowns as **TBD — requires confirmation**.

---

*This bible supersedes scattered notes for developer onboarding. Product/marketing docs remain in `docs/00`–`12` numbered series.*
