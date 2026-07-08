# Anu-Sabi — StudioOS Project Documentation

> Technical archive for **Anu-Sabi** (also branded **SabiMo?** / **Sabi Mo Ano**) inside StudioOS.

## What is Anu-Sabi?

Anu-Sabi is a mobile-first word-guessing game where players read phonetic gibberish aloud to decode real Filipino and world phrases. The application is a **React + TypeScript SPA** wrapped in **Capacitor** for Android and iOS.

| Identifier | Value |
|------------|-------|
| UI brand | SabiMo? |
| Capacitor app name | Sabi Mo Ano |
| Package ID | `com.sabimoano.game` |
| Application source | Repository root (`src/`, `android/`, `ios/`) |

---

## Product phases

| Phase | Name | Status |
|-------|------|--------|
| **1** | **Offline mode** | **Active** — first milestone: offline playable |
| **2** | **Online mode** | Planned — not in repository |
| **3** | **Party mode (Bluetooth)** | Planned — not in repository |

**Current milestone:** Close **Phase 1** — ship a fully **offline-playable** app (no network required for core gameplay).

Details: [docs/roadmap/ROADMAP.md](docs/roadmap/ROADMAP.md)

---

## Current status (2026-07-08)

| Area | Status | Phase |
|------|--------|-------|
| Core gameplay (offline) | Complete | 1 |
| Daily Streak / progression | Complete | 1 |
| Local persistence | Complete | 1 |
| Capacitor Android/iOS scaffold | Complete | 1 |
| Offline milestone (release-ready) | Partial | 1 |
| Leaderboard | Partial (stub data) | 1 UI / 2 data |
| Friends / Premium | Stub | 2 |
| Backend / online play | Planned | 2 |
| Bluetooth party mode | Planned | 3 |
| Rambler Engine | Planned — research only | — |

---

## Documentation map

### Product manual — game, UX, vision (read this first if new to the project)

| Path | Document |
|------|----------|
| **[docs/product/PRODUCT_MANUAL.md](docs/product/PRODUCT_MANUAL.md)** | **Product manual index** |
| [docs/product/01_VISION.md](docs/product/01_VISION.md) | Vision & why Anu-Sabi exists |
| [docs/product/02_PHILOSOPHY.md](docs/product/02_PHILOSOPHY.md) | Product principles |
| [docs/product/03_GAME_DESIGN.md](docs/product/03_GAME_DESIGN.md) | Game design (why each system exists) |
| [docs/product/04_USER_EXPERIENCE.md](docs/product/04_USER_EXPERIENCE.md) | Player journey |
| [docs/product/05_SCREENS.md](docs/product/05_SCREENS.md) | Screen experience guide |
| [docs/product/10_ROADMAP_NARRATIVE.md](docs/product/10_ROADMAP_NARRATIVE.md) | Why the product evolves |

### Engineering & technical

| Path | Document |
|------|----------|
| [docs/DEVELOPER_BIBLE.md](docs/DEVELOPER_BIBLE.md) | Developer rebuild bible |
| [docs/roadmap/ROADMAP.md](docs/roadmap/ROADMAP.md) | Phase checklist & backlog |
| [docs/implementation/](docs/implementation/) | Feature implementation |
| [docs/architecture/](docs/architecture/) | System architecture |
| [docs/developer/](docs/developer/) | Engineering chapters 01–09 |

**Product / design:** [docs/product/PRODUCT_MANUAL.md](docs/product/PRODUCT_MANUAL.md)  
**Engineering:** [docs/DEVELOPER_BIBLE.md](docs/DEVELOPER_BIBLE.md)

---

## Repository layout

```
<repo-root>/
├── src/                    ← Application source
├── android/ / ios/         ← Capacitor
├── docs/                   ← Legacy product docs (00–12, GPT artifact)
└── projects/anu-sabi/
    ├── README.md           ← You are here
    └── docs/               ← Anu-Sabi technical documentation
```

---

## Conventions

| Label | Meaning |
|-------|---------|
| **Complete** | Fully implemented locally |
| **Partial** | Works with known gaps |
| **Stub** | Placeholder UI/data only |
| **Planned** | Not in repository |

Full conventions: see sections below in prior docs or [roadmap](docs/roadmap/ROADMAP.md).

---

## Maintenance

Update `projects/anu-sabi/docs/` when application behavior or phase scope changes.
