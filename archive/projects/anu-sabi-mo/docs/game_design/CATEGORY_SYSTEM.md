# 🗂️ Category System

> **Defines how phrases are organized into categories and how categories contribute to gameplay, progression, and future expansion.**

---

# Purpose

The Category System organizes phrases into themed collections that provide variety while preserving the core gameplay experience.

Categories allow players to:

- Play familiar content
- Discover new topics
- Practice specific knowledge areas
- Increase replayability

Categories should enhance the game without changing its core mechanics.

---

# Design Philosophy

Categories change **what players decode**, not **how they play**.

Regardless of category, every session should follow the same gameplay loop:

```
Choose Category

↓

Receive Phrase

↓

Decode

↓

Submit Answer

↓

Score

↓

Next Phrase
```

The gameplay experience remains consistent across all categories.

---

# Current Categories

Anu Sabi currently supports three playable categories.

| Category | Status | Description |
|----------|--------|-------------|
| Pinoy | ✅ Implemented | Filipino words, phrases, culture, expressions, places, and references |
| World | ✅ Implemented | International words, places, brands, history, science, entertainment, and general knowledge |
| Mixed | ✅ Implemented | Random selection from all available categories |

---

# Pinoy Category

Status

✅ Implemented

### Description

The Pinoy category celebrates Filipino language and culture.

Example content includes:

- Common Filipino expressions
- Famous personalities
- Foods
- Festivals
- Provinces
- Tourist destinations
- Pop culture
- Everyday vocabulary

The goal is to create a uniquely Filipino gameplay experience.

---

# World Category

Status

✅ Implemented

### Description

The World category focuses on globally recognized topics.

Possible content includes:

- Countries
- Cities
- Science
- Technology
- Movies
- Music
- Geography
- Sports
- Famous landmarks
- International brands

The content should remain understandable for a broad audience.

---

# Mixed Category

Status

✅ Implemented

### Description

Mixed mode combines every available playable category.

Each phrase is randomly selected from the complete phrase library.

This provides maximum variety and replayability.

---

# Category Selection

Players choose a category before starting a game.

The selected category determines the pool of phrases available during the session.

Changing categories should not affect:

- Difficulty
- Rules
- Scoring
- Progression

Only the content changes.

---

# Category Architecture

Categories should remain modular.

```
Category

↓

Phrase Library

↓

Random Selection

↓

Gameplay
```

Each category should maintain its own phrase collection while sharing the same gameplay systems.

---

# Content Quality

Every category should maintain consistent quality.

Each category should include:

- Clear phrases
- Balanced difficulty
- Appropriate variety
- High replay value
- Accurate spelling

Detailed content standards are defined in the Content Documentation.

---

# Future Categories

The system is designed to support expansion without changing gameplay.

Potential categories include:

- Movies
- Songs
- Anime
- Gaming
- Food
- Sports
- History
- Science
- Technology
- Nature
- Animals
- Literature
- Business
- Travel
- Holidays
- Mythology

Each category should provide a unique theme while preserving the same decoding mechanics.

---

# Seasonal Categories

Status

🟡 Planned

Future seasonal packs may include:

- Christmas
- Halloween
- Valentine's Day
- Independence Day
- Summer
- Back to School

These categories may appear temporarily during special events.

---

# Premium Categories

Status

🟟 Planned

Future premium content may introduce exclusive phrase libraries.

Examples:

- Professional vocabulary
- Advanced trivia
- Movie collections
- TV series
- Pop culture expansions

Premium categories should expand the game without creating unfair advantages.

---

# Community Categories

Status

🟡 Future

Long-term plans may allow community-created phrase packs.

Potential workflow:

```
Community Submission

↓

Review

↓

Approval

↓

Publication

↓

Download
```

Quality standards must remain consistent across official and community content.

---

# Downloadable Content

Future versions may support downloadable category packs.

Benefits include:

- Smaller application updates
- Faster content expansion
- Event-based releases
- Language packs
- Educational packs

Downloaded packs should integrate seamlessly with the existing category system.

---

# Localization

Categories should support multiple languages in the future.

Possible examples:

- Filipino
- English
- Spanish
- Japanese

Each language should maintain equivalent gameplay quality while respecting cultural differences.

---

# Balancing Principles

Every category should strive for:

- Similar average difficulty
- Comparable phrase lengths
- Equal replay value
- Fair scoring opportunities

Categories should differ by theme, not by inherent difficulty.

---

# Design Goals

The Category System should remain:

- Modular
- Expandable
- Balanced
- Easy to browse
- Easy to maintain

New categories should be added without modifying existing gameplay systems.

---

# Related Documents

- PHRASE_SYSTEM.md
- GAME_MODES.md
- GAME_RULES.md
- BALANCING.md

---

# Revision History

## Version 1.0.0

- Documented the current Pinoy, World, and Mixed categories.
- Defined the architecture for future category expansion.
- Established principles for downloadable, seasonal, premium, and community content.
- Separated gameplay category design from phrase authoring standards.