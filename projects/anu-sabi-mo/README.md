---
Document ID: ROOT-001
Title: Repository README
Version: 1.0.0
Status: CURRENT
Owner: Kristian Arendani
Maintainer: Ziv (ChatGPT)
Last Updated: 2026-07-07

Source of Truth:
- Current Codebase
- GPT_ARTIFACT.md
- Project Documentation
- Product Decisions

Related Documents:
- PROJECT_STATUS.md
- ROADMAP.md
- DOCUMENT_INDEX.md
- docs/00_PROJECT_OVERVIEW.md
---

# 🇵🇭 Anu Sabi

> **A modern Filipino party word game built to celebrate language, culture, and laughter.**

Anu Sabi is a fast-paced mobile party game where players guess incomplete Filipino words, phrases, expressions, and cultural references before time runs out. Designed for quick, replayable sessions, the game combines familiar language with clever challenges that reward both knowledge and intuition.

The project aims to become more than just another word game. It is being designed as a scalable content platform capable of supporting thousands of phrases, themed content packs, seasonal updates, and future AI-assisted content generation.

---

# 🎯 Vision

Our vision is to create the definitive Filipino party word game.

Anu Sabi should be:

- Easy to learn
- Difficult to master
- Fun for families and friends
- Deep enough to remain replayable for years
- A celebration of Filipino language and culture

Every game session should create moments of laughter, surprise, nostalgia, and friendly competition.

---

# 🌟 Project Goals

The project has five primary goals:

### 1. Celebrate Filipino Culture

Create a game that proudly showcases Filipino words, sayings, idioms, slang, and shared cultural experiences.

---

### 2. Build a Highly Replayable Game

Players should always feel like there are new phrases to discover and new achievements to unlock.

---

### 3. Create a Sustainable Content Platform

The game's architecture is designed so that future content can be added without requiring major code changes.

---

### 4. Explore AI-Assisted Content Creation

Future versions of Anu Sabi will use AI to assist in generating, reviewing, and balancing phrase content while keeping humans in control of quality.

---

### 5. Serve as the Flagship Project of StudioOS

Anu Sabi is the first major project built using the StudioOS development methodology and documentation standards.

---

# 🚧 Current Project Status

| Area | Status |
|-------|--------|
| Documentation | 🟢 Active |
| Core Gameplay | 🟡 In Development |
| User Interface | 🟡 In Development |
| Content Creation | 🟡 Ongoing |
| Architecture | 🟢 Established |
| Backend Services | ⚪ Planned |
| Multiplayer | 🔵 Vision |
| AI Systems | 🔵 Vision |

Status Legend

- 🟢 Current
- 🟡 In Progress
- ⚪ Planned
- 🔵 Vision

---

# ✨ Current Features

Current implementation includes:

- Filipino phrase guessing gameplay
- Multiple content categories
- Coin system
- Badge system
- Hint system
- Daily streak tracking
- Local game progress
- Responsive mobile-first interface
- Offline-friendly architecture

---

# 🚀 Planned Features

Future releases may include:

- Additional phrase packs
- Seasonal events
- Daily challenges
- Expanded achievement system
- Premium content
- Analytics
- AI-assisted content management
- Multiplayer modes
- Cloud synchronization

Items in this section represent the product roadmap and do not necessarily exist in the current implementation.

---

# 🛠 Technology Stack

| Technology | Purpose |
|------------|---------|
| React | User Interface |
| TypeScript | Type Safety |
| Vite | Development & Build Tool |
| Tailwind CSS | Styling |
| LocalStorage | Current Data Persistence |

Future technologies may include Fastify, PostgreSQL, Prisma, Redis, and cloud services as the project evolves.

---

# 📂 Repository Structure

```text
anu-sabi/

├── docs/
├── architecture/
├── decisions/
├── research/
├── prompts/
├── assets/
├── releases/

├── README.md
├── PROJECT_STATUS.md
├── ROADMAP.md
├── TODO.md
├── PROJECT_HISTORY.md
```

---

# 📚 Documentation

The project documentation is organized into several areas.

| Area | Purpose |
|------|---------|
| Project | Vision, roadmap, history |
| Gameplay | Rules, systems, progression |
| Architecture | Technical design |
| Research | References and ideas |
| Decisions | Architectural Decision Records (ADRs) |
| Publishing | Release preparation |

See:

- DOCUMENT_INDEX.md

for the complete documentation map.

---

# 🧠 Development Philosophy

Anu Sabi follows several guiding principles.

- Documentation is treated as a product.
- Architecture evolves with implementation.
- Features are designed before they are coded.
- Simplicity is preferred over unnecessary complexity.
- Every significant decision is documented.

---

# 🤖 AI-Assisted Development

This project uses multiple AI tools as collaborative assistants.

| Tool | Primary Responsibility |
|------|-------------------------|
| Cursor | Code generation and codebase analysis |
| ChatGPT (Ziv) | Documentation, architecture, planning |
| Claude | Long-form analysis and review |

Human decisions always remain the final source of truth.

---

# 🗺 Project Roadmap

The project progresses through several phases.

Phase 1

- Foundation
- Core Gameplay
- Documentation

Phase 2

- Expanded Content
- Game Balancing
- Enhanced Progression

Phase 3

- AI-Assisted Systems
- Publishing Preparation
- Advanced Features

For details see:

ROADMAP.md

---

# 🤝 Contributing

Development currently follows an internal workflow.

Future community contribution guidelines will be published in:

CONTRIBUTING.md

---

# 📜 License

License information will be added before the first public release.

---

# 🙏 Acknowledgements

Anu Sabi is made possible through the collaboration of:

- Kristian Arendain (Project Creator & Product Owner)
- Ziv (ChatGPT Documentation & Architecture)
- Cursor AI (Development Assistant)

---

# 📌 Repository Status

This repository contains both current implementation and future planning documents.

Every document is classified as one of the following:

- CURRENT
- PLANNED
- VISION
- DEPRECATED

This distinction helps keep the documentation aligned with the actual state of the project.

---

*"Building a game is writing code.*

*Building a lasting game is creating knowledge that survives every version."*
