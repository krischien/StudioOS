---
Document ID: DOC-003
Title: Gameplay Specification
Version: 1.0.0
Status: CURRENT
Owner: Kristian Arendain
Maintainer: Ziv (ChatGPT)
Last Updated: 2026-07-07

Purpose:
Define the gameplay mechanics of Anu Sabi. This document explains how players interact with the game, how a round progresses, the rules, player actions, rewards, and gameplay principles.

Related Documents:
- 02_GAME_DESIGN.md
- 04_GAME_LOOP.md
- 05_UI_UX.md
- 06_ECONOMY.md
---

# 🎮 Gameplay Specification

> *The gameplay of Anu Sabi should be simple to understand, exciting to play, and rewarding to master.*

---

# Gameplay Overview

Anu Sabi is a fast-paced Filipino word and phrase guessing game where players identify missing letters or complete familiar words and expressions before time runs out.

Every round is designed to be:

- Fast
- Intuitive
- Challenging
- Rewarding
- Highly replayable

The gameplay focuses on recognition rather than memorization, encouraging players to rely on their familiarity with Filipino language and culture.

---

# Core Objective

The player's objective is simple:

> Complete as many words or phrases correctly before the timer expires.

Success rewards players with coins, progression, badges, and streaks.

Incorrect answers are learning opportunities and should never feel overly punishing.

---

# Core Gameplay Flow

A typical gameplay session follows this sequence:

```text
Open Game

↓

Choose Game Mode

↓

Start Round

↓

View Puzzle

↓

Think

↓

Answer

↓

Correct / Incorrect Feedback

↓

Next Puzzle

↓

Round Ends

↓

Rewards Screen

↓

Return to Home

↓

Play Again
```

Detailed flow is documented in **04_GAME_LOOP.md**.

---

# Player Actions

Players can:

- Read the displayed clue or phrase.
- Guess the missing word or letters.
- Submit an answer.
- Use hints (when available).
- Skip if allowed by the selected game mode.
- Continue to the next puzzle.
- Review earned rewards.

Every action should require minimal interaction and provide immediate feedback.

---

# Round Structure

Each round consists of:

1. Presenting a puzzle.
2. Allowing the player to respond.
3. Evaluating the answer.
4. Awarding points or feedback.
5. Loading the next puzzle.

This sequence repeats until the round timer expires or the game mode's completion condition is reached.

---

# Difficulty

Difficulty should increase gradually through:

- Longer phrases.
- Less common expressions.
- Reduced hints.
- Faster decision making.
- More complex vocabulary.

Difficulty should never rely on unfair mechanics or random penalties.

---

# Hint System

Hints are designed to assist players without removing the challenge.

Possible hint types include:

- Reveal a letter.
- Eliminate incorrect choices.
- Provide contextual clues.
- Highlight word length.
- Offer phrase category hints.

Hints should be meaningful and limited, encouraging strategic use.

Detailed balancing is covered in **06_ECONOMY.md**.

---

# Scoring Philosophy

Players are rewarded for:

- Correct answers.
- Consecutive correct responses.
- Fast thinking.
- Completing rounds.
- Maintaining daily streaks.

Scoring should encourage improvement rather than discourage mistakes.

---

# Rewards

Gameplay rewards may include:

- Coins
- Badges
- Daily streak progress
- Achievement progress
- Unlockable content

Rewards should reinforce consistent play without creating excessive grinding.

---

# Failure States

Players may fail a puzzle or round by:

- Running out of time.
- Providing an incorrect answer (depending on game mode).
- Ending the round without meeting objectives.

Failure should encourage another attempt rather than create frustration.

---

# Replayability

Replayability is achieved through:

- Large phrase database.
- Multiple categories.
- Difficulty progression.
- Randomized puzzle selection.
- Daily challenges.
- Unlockable content packs.

The game should remain engaging after hundreds of rounds.

---

# Accessibility

Gameplay should remain accessible through:

- Simple controls.
- Clear typography.
- Colorblind-friendly design where possible.
- Adjustable sound settings.
- Responsive layouts.
- Short play sessions.

Accessibility is considered a core feature, not an optional enhancement.

---

# Gameplay Principles

Every gameplay mechanic should support one or more of the following principles:

- Easy to learn.
- Quick to play.
- Fair challenge.
- Immediate feedback.
- Meaningful progression.
- Respect for the player's time.

Mechanics that violate these principles should be reconsidered.

---

# Current Gameplay Features

Current implementation includes:

- Filipino phrase guessing.
- Timer-based gameplay.
- Hint system.
- Coin rewards.
- Badge progression.
- Daily streak tracking.
- Local player progress.

---

# Planned Gameplay Features

Future improvements may include:

- Additional game modes.
- Category-specific challenges.
- Timed events.
- Weekly tournaments.
- Cooperative gameplay.
- Multiplayer modes.

These features will only be introduced if they strengthen the core gameplay experience.

---

# Success Metrics

The gameplay experience is considered successful when:

- New players understand the rules within one minute.
- Most sessions last between two and five minutes.
- Players feel rewarded after every session.
- Difficulty increases naturally.
- Returning players continue discovering new content.

---

# Related Documents

- **04_GAME_LOOP.md** — Detailed player flow.
- **05_UI_UX.md** — User interaction and interface.
- **06_ECONOMY.md** — Rewards and progression.
- **08_CONTENT_PACKS.md** — Phrase organization and categories.

---

# Revision History

## Version 1.0.0

- Established the official gameplay specification.
- Defined the gameplay philosophy, mechanics, player actions, and progression principles.