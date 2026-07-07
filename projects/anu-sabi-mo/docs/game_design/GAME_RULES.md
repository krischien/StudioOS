# 📖 Game Rules

> **Defines the official gameplay rules for Anu Sabi.**

---

# Purpose

This document establishes the official rules governing gameplay in Anu Sabi.

It serves as the authoritative reference for:

- Gameplay behavior
- Winning conditions
- Losing conditions
- Round structure
- Player actions
- Future balancing decisions

All gameplay mechanics should remain consistent with these rules.

---

# Objective

The objective of Anu Sabi is simple:

> Decode the scrambled phrase and enter the correct answer before time expires.

Players earn points by correctly identifying phrases while managing limited time.

---

# Core Principle

Anu Sabi rewards:

- Pattern recognition
- Vocabulary
- Familiarity with phrases
- Quick thinking
- Consistency

The game is designed to reward skill rather than luck.

---

# Starting a Game

Before gameplay begins, the player selects:

## Category

Current options:

- Pinoy
- World
- Mixed

---

## Game Mode

Current options:

- 10 Round
- Endless

---

## Difficulty

Current options:

- Easy
- Medium
- Hard

Difficulty determines the amount of time available for each round.

---

# Round Structure

Each round follows the same sequence.

```
Generate Phrase

↓

Scramble Phrase

↓

Display Phrase

↓

Start Countdown Timer

↓

Player Decodes Phrase

↓

Player Submits Answer

↓

Answer Validation

↓

Round Result

↓

Next Round
```

---

# Time Limit

Every round has a countdown timer.

Current default values:

| Difficulty | Time |
|------------|------|
| Easy | 45 seconds |
| Medium | 30 seconds |
| Hard | 15 seconds |

If the timer reaches zero before a correct answer is submitted, the round ends automatically.

---

# Answer Submission

Players may submit answers at any time before the timer expires.

The submitted answer is validated immediately.

If correct:

- Round is completed
- Points awarded
- Combo increases
- Next round begins

If incorrect:

- The player may continue guessing while time remains.

There is **no penalty for incorrect guesses**, only the loss of available time.

---

# Answer Validation

The validation system should be forgiving where appropriate.

It should ignore differences such as:

- Uppercase vs lowercase
- Leading spaces
- Trailing spaces

Future improvements may include:

- Minor punctuation tolerance
- Accent normalization
- Alternative accepted spellings where appropriate

Validation should remain fair without becoming overly permissive.

---

# Hints

Players may use hints during a round.

Current implementation:

- Costs coins or uses available hint tokens
- Reveals a clue to assist the player

Using a hint does **not** automatically reduce the player's score, but it consumes a limited resource.

---

# Skip

Players may skip a difficult phrase.

Current behavior:

- Current phrase ends
- Correct answer is revealed
- Combo resets
- Gameplay continues

Skipping does not end the session.

---

# Combo / Streak

Consecutive correct answers build a combo.

A combo increases scoring efficiency.

The combo is reset when:

- The player skips
- The player fails the round
- The timer expires

Maintaining a combo is one of the primary skill elements of the game.

---

# Ending a Game

## 10 Round Mode

The game ends after ten completed rounds.

---

## Endless Mode

The game continues indefinitely until the player chooses to stop or another future end condition is introduced.

---

# End of Session

At the end of every session the game calculates:

- Final score
- Correct answers
- Accuracy
- Coins earned
- Badges unlocked
- Best score
- Game history
- Daily progress

These values are saved before returning to the player.

---

# Winning

Anu Sabi does not have a traditional win or lose state.

Success is measured by:

- Score
- Accuracy
- Combos
- Personal improvement
- Progression
- Badge unlocks
- Daily completion

Players compete primarily against their own previous performance.

---

# Losing

A player never "loses" the game.

Instead, a session ends with:

- Progress recorded
- Rewards calculated
- Statistics updated

Every completed session contributes to long-term progression.

---

# Fair Play

The game should remain:

- Predictable
- Consistent
- Skill-based
- Accessible

Unexpected or random mechanics should be minimized unless introduced as intentional gameplay features.

---

# Offline Play

Core gameplay must always remain available without an internet connection.

Players should be able to:

- Play
- Save progress
- Unlock badges
- Earn coins
- Complete daily systems

without requiring online connectivity.

---

# Future Rule Extensions

Future updates may introduce:

- Ranked matches
- Multiplayer rules
- Event-specific rules
- Seasonal modifiers
- Cooperative gameplay
- Tournament rules
- Community challenges

These additions should extend the rule set without altering the core gameplay principles.

---

# Rule Change Policy

Changes to gameplay rules should be:

- Documented
- Reviewed for balance
- Tested thoroughly
- Reflected in related design documents

Major gameplay changes should preserve existing player expectations whenever practical.

---

# Related Documents

- GAME_LOOP.md
- GAME_MODES.md
- SCORING_SYSTEM.md
- DIFFICULTY_SYSTEM.md
- BALANCING.md

---

# Revision History

## Version 1.0.0

- Established the official gameplay rules for Anu Sabi.
- Defined round flow, player actions, answer validation, and session completion.
- Documented the principles of fair, skill-based, offline-first gameplay.