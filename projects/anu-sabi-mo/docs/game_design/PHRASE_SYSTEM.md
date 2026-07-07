# 📝 Phrase System

> **Defines how phrases are stored, selected, validated, and delivered during gameplay in Anu Sabi.**

---

# Purpose

The Phrase System is the heart of Anu Sabi.

Every game session depends on a high-quality collection of phrases that are:

- Fun
- Recognizable
- Fair
- Replayable
- Appropriate for the selected category

This document defines how the game interacts with phrase content.

It does **not** define how phrases should be written. Phrase authoring standards are documented separately in the Content Documentation.

---

# Design Philosophy

Players should spend their time decoding phrases, not struggling against poorly designed content.

Good phrases should reward:

- Recognition
- Familiarity
- Pattern matching
- Language understanding

Difficulty should come from decoding, not confusing wording.

---

# Phrase Lifecycle

Every phrase follows the same lifecycle.

```
Phrase Library

↓

Category Selection

↓

Random Selection

↓

Display

↓

Player Decodes

↓

Answer Validation

↓

Results

↓

Return to Library
```

The system should remain simple, predictable, and efficient.

---

# Current Phrase Library

Current implementation includes approximately:

- 250 Pinoy phrases
- 250 World phrases

Total:

Approximately **500 phrases**

The library is stored locally within the application.

---

# Phrase Structure

Each phrase consists of:

```
Phrase

↓

Category

↓

Answer

↓

Metadata (future)
```

Future metadata may include:

- Difficulty
- Tags
- Source
- Language
- Release pack
- Author
- Version

The phrase structure should remain extensible without breaking existing content.

---

# Phrase Selection

Before each round the game:

1. Determines the selected category.
2. Retrieves the corresponding phrase pool.
3. Randomly selects a phrase.
4. Displays the scrambled version.

Selection should appear random while avoiding obvious repetition.

---

# Randomization

The randomization system should provide:

- High variety
- Even distribution
- Minimal immediate repetition

Future improvements may include:

- Shuffle history
- Smart randomization
- Recently played exclusion
- Weighted selection

The objective is to maximize replayability.

---

# Scrambling

The displayed phrase should be transformed into a scrambled representation while remaining solvable.

The scrambling algorithm should:

- Preserve fairness
- Avoid revealing the answer
- Maintain readability
- Produce consistent results

Future algorithm improvements should not require changes to phrase content.

---

# Answer Validation

Player answers are compared against the stored phrase.

Current validation supports:

- Case-insensitive comparison
- Whitespace normalization

Future improvements may include:

- Punctuation tolerance
- Accent normalization
- Accepted alternative spellings
- Regional spelling variations

Validation should remain forgiving without accepting incorrect answers.

---

# Replayability

Replayability is one of the primary goals of the Phrase System.

The system should:

- Minimize repetition
- Rotate content naturally
- Encourage long-term play

As the phrase library grows, replayability should improve automatically.

---

# Future Phrase Metadata

Future versions may associate additional information with each phrase.

Example:

```
Phrase

↓

Category

↓

Difficulty

↓

Language

↓

Tags

↓

Source Pack

↓

Version

↓

Author
```

Metadata enables advanced filtering without changing gameplay.

---

# Phrase Packs

Status

🟡 Planned

Future content may be distributed as independent phrase packs.

Examples include:

- Movies
- Music
- Sports
- Science
- Philippine History
- Geography
- Anime
- Technology

Each pack should integrate seamlessly into the Category System.

---

# Seasonal Content

Temporary phrase collections may be released for special occasions.

Examples:

- Christmas
- Halloween
- Valentine's Day
- Summer
- New Year
- Independence Day

Seasonal packs should be optional and easy to enable or disable.

---

# Downloadable Content

Future versions may support downloadable phrase libraries.

Benefits include:

- Faster content expansion
- Smaller application updates
- Community content
- Educational collections
- Premium packs

The gameplay engine should not require modification when new phrase packs are added.

---

# Localization

The Phrase System should support multiple languages.

Possible languages include:

- English
- Filipino
- Spanish
- Japanese

Each language should maintain equivalent gameplay quality while respecting cultural differences.

---

# Rambler Engine Integration

Status

🟡 Planned

The Rambler Engine will extend the Phrase System by introducing procedural content generation.

Potential capabilities include:

- Dynamic phrase generation
- Themed events
- Difficulty-aware selection
- AI-assisted variation
- Infinite replayability

Generated phrases should satisfy the same quality standards as manually authored content.

---

# AI Assistance

Future AI tools may assist with:

- Duplicate detection
- Quality review
- Grammar checking
- Difficulty estimation
- Localization
- Metadata generation

AI should assist content creation rather than replace editorial review.

---

# Content Quality

Every phrase should be:

- Easy to read
- Grammatically correct
- Appropriate for its category
- Family-friendly
- Fun to decode

Detailed quality standards are maintained in the Content Documentation.

---

# Scalability Goals

The Phrase System should comfortably support:

- Thousands of phrases
- Multiple languages
- Community-created packs
- Downloadable expansions
- Premium content
- Procedurally generated phrases

The architecture should support growth without requiring major redesign.

---

# Design Goals

The Phrase System should remain:

- Fast
- Modular
- Expandable
- Fair
- Easy to maintain
- Offline-first

Players should always experience fresh, high-quality content regardless of library size.

---

# Related Documents

- CATEGORY_SYSTEM.md
- GAME_RULES.md
- BALANCING.md

(Content Documentation)

- PHRASE_GUIDELINES.md
- CONTENT_PIPELINE.md
- QUALITY_GUIDELINES.md
- RAMBLER_ENGINE.md

---

# Revision History

## Version 1.0.0

- Documented the Phrase System architecture.
- Defined phrase selection, randomization, validation, and replayability.
- Established support for future phrase packs, localization, AI assistance, and Rambler Engine integration.
- Separated gameplay systems from phrase authoring standards.