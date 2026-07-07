# 🏗️ Anu Sabi Architecture

> **The technical blueprint for building, maintaining, and evolving Anu Sabi.**

---

# Purpose

This directory contains the complete technical documentation for Anu Sabi.

While the `/docs` directory explains **what** the game is and **why** it exists, the `/architecture` directory explains **how** it is built.

These documents are intended for developers, contributors, reviewers, and AI-assisted development tools.

---

# Architecture Principles

Anu Sabi follows several core engineering principles:

- Offline-first architecture
- Documentation-first development
- Modular design
- Component reusability
- Clear separation of concerns
- Maintainability over cleverness
- Incremental scalability

Every architectural decision should reinforce these principles.

---

# Current Technology Stack

Frontend

- React
- TypeScript
- Vite
- Tailwind CSS

Database

- SQLite (Current)

Future (Optional)

- Neon PostgreSQL for online features

Deployment

- Vercel

Development

- Git
- GitHub
- Cursor
- StudioOS Documentation

---

# Directory Overview

This directory is organized into focused topics.

Examples include:

- Frontend Architecture
- Database Design
- API Design
- Security
- Performance
- Deployment
- Coding Standards
- Testing
- Architecture Decisions

Each subdirectory owns a specific aspect of the system.

---

# Relationship to Other Documentation

```
docs/
        ↓
Product Design

design/
        ↓
UI / UX Specifications

architecture/
        ↓
Technical Implementation

testing/
        ↓
Quality Assurance

research/
        ↓
Validation & Evidence
```

Together these directories form the complete documentation ecosystem for Anu Sabi.

---

# Offline-First Philosophy

The core gameplay experience should function entirely offline.

SQLite serves as the primary local datastore.

Cloud infrastructure will only be introduced when it provides meaningful value, such as:

- Cloud save
- Cross-device synchronization
- Online leaderboards
- Multiplayer
- Community features

Offline gameplay should never depend on an active internet connection.

---

# Documentation Standards

Each architecture document should include:

- Purpose
- Scope
- Design decisions
- Current implementation
- Future considerations
- Related documents

This keeps the documentation consistent and easy to navigate.

---

# Future Evolution

As Anu Sabi grows, this directory will expand to include:

- Sequence diagrams
- Component diagrams
- Database schemas
- Deployment diagrams
- API specifications
- Performance benchmarks

The architecture documentation should evolve alongside the codebase.

---

# Related Directories

- `/docs`
- `/design`
- `/content`
- `/testing`
- `/research`
- `/decisions`

---

# Revision History

## Version 1.0.0

- Established the architecture documentation hub.
- Defined engineering principles and documentation scope.