---
Document ID: DOC-002
Title: Game Design Document (GDD)
Version: 1.0.0
Status: CURRENT
Owner: Kristian Arendain
Maintainer: Ziv (ChatGPT)
Last Updated: 2026-07-07

Purpose:
Serve as the master design specification for Anu Sabi. This document provides a high-level view of the game's design and acts as the central hub linking to all detailed gameplay systems.

Related Documents:
- 00_PROJECT_OVERVIEW.md
- 01_VISION.md
- 03_GAMEPLAY.md
- 04_GAME_LOOP.md
- 05_UI_UX.md
- 06_ECONOMY.md
- 07_MONETIZATION.md
- 08_CONTENT_PACKS.md
- 09_DAILY_STREAK.md
- 10_SYSTEM_ARCHITECTURE.md
---

# 🎮 Game Design Document

> *The master blueprint for Anu Sabi.*

This document provides a complete overview of the game's design philosophy, systems, and structure. Detailed implementation of each system is documented in the corresponding design documents.

---

# Purpose

The purpose of this document is to answer one question:

> **How is Anu Sabi designed?**

It does not describe implementation details or code. Instead, it defines the major systems that work together to create the player experience.

---

# Game Summary

Anu Sabi is a fast-paced Filipino word and phrase guessing game where players identify incomplete words, expressions, and cultural references before time runs out.

The game emphasizes:

- Fast gameplay
- Replayability
- Filipino culture
- Rewarding progression
- Expandable content

---

# Core Gameplay Pillars

The game is built around five primary pillars:

## 🎯 Challenge

Players solve increasingly diverse and engaging phrase puzzles.

---

## 🇵🇭 Culture

Content celebrates Filipino language, humor, and shared experiences.

---

## 🏆 Progression

Players earn rewards through consistent play and improvement.

---

## 🔁 Replayability

New phrase packs, achievements, and progression systems encourage players to return.

---

## 📈 Growth

The game's architecture supports continuous expansion without changing its core gameplay.

---

# Core Systems

Anu Sabi is composed of several interconnected systems.

## Gameplay

Responsible for:

- Phrase guessing
- Timer
- Scoring
- Round progression

See:

**03_GAMEPLAY.md**

---

## Game Loop

Defines:

- Start game
- Complete round
- Earn rewards
- Return to menu
- Play again

See:

**04_GAME_LOOP.md**

---

## User Interface

Defines:

- Screen layouts
- Navigation
- User interactions
- Accessibility
- Visual consistency

See:

**05_UI_UX.md**

---

## Economy

Defines:

- Coins
- Rewards
- Badges
- Unlocks
- Progression

See:

**06_ECONOMY.md**

---

## Monetization

Defines:

- Premium content
- Optional purchases
- Reward philosophy

See:

**07_MONETIZATION.md**

---

## Content System

Defines:

- Phrase packs
- Categories
- Difficulty
- Expansion strategy

See:

**08_CONTENT_PACKS.md**

---

## Retention Systems

Defines:

- Daily streaks
- Returning player rewards
- Long-term engagement

See:

**09_DAILY_STREAK.md**

---

## Technical Architecture

Defines:

- System architecture
- Data model
- Component structure
- State management

See:

**10_SYSTEM_ARCHITECTURE.md**

---

# Player Journey

The intended player journey is:

```
Open Game

↓

Choose Game Mode

↓

Play Round

↓

Earn Rewards

↓

Progress

↓

Unlock Content

↓

Play Again
```

Each step should be fast, intuitive, and satisfying.

---

# Design Principles

Every feature added to Anu Sabi should satisfy one or more of the following:

- Improves player enjoyment
- Increases replayability
- Supports Filipino culture
- Rewards player progression
- Fits the game's simplicity
- Scales well over time

Features that do not support these principles should be reconsidered.

---

# Current Scope

The current version focuses on:

- Single-player gameplay
- Local progression
- Offline-friendly experience
- Curated phrase packs
- Reward systems
- Documentation-first development

---

# Future Scope

Future versions may include:

- Multiplayer modes
- Cloud saves
- Seasonal events
- AI-assisted content tools
- Community content
- Cross-platform support

These features will only be added if they strengthen the core player experience.

---

# Success Criteria

The game design is considered successful when:

- New players understand the game within minutes.
- Sessions remain engaging after repeated play.
- Progression feels rewarding.
- Content can expand without redesigning core mechanics.
- Every system contributes to the overall vision.

---

# Design Dependencies

The following documents define the detailed behavior of each system:

| Document | Purpose |
|----------|---------|
| 03_GAMEPLAY.md | Gameplay mechanics |
| 04_GAME_LOOP.md | Core gameplay flow |
| 05_UI_UX.md | User interface and experience |
| 06_ECONOMY.md | Progression and rewards |
| 07_MONETIZATION.md | Revenue model |
| 08_CONTENT_PACKS.md | Content organization |
| 09_DAILY_STREAK.md | Retention systems |
| 10_SYSTEM_ARCHITECTURE.md | Technical design |

---

# Revision History

## Version 1.0.0

- Established the Game Design Document as the master specification for Anu Sabi.
- Adopted a modular documentation structure where detailed systems are documented independently.