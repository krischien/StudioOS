# 🌍 Localization

> **Defines how Anu Sabi content is translated, adapted, and managed across multiple languages and regions.**

---

# Purpose

Localization enables Anu Sabi to provide an enjoyable experience for players around the world while preserving the meaning, gameplay, and cultural relevance of each phrase.

Localization extends beyond translation. It includes cultural adaptation, regional variations, and language-specific gameplay considerations.

---

# Design Goals

The localization system should be:

- Accurate
- Consistent
- Scalable
- Offline-friendly
- Region-aware
- Easy to maintain

Localization should enhance gameplay without altering core mechanics.

---

# Current Implementation

The current version of Anu Sabi ships with English phrase data.

Phrase content is bundled directly into the application using TypeScript data files.

No runtime language switching currently exists.

---

# Future Architecture

Localization should support multiple languages without changing the overall content model.

```
Content Library

↓

Language Pack

↓

Localized Phrase

↓

Player
```

Each language pack represents the same logical content in a different language.

---

# Language Packs

Every supported language should be packaged independently.

Examples:

- English
- Filipino
- Spanish
- Japanese
- Korean
- French
- German
- Portuguese

Future language packs may be downloaded separately.

---

# Phrase Identity

Each phrase should have a permanent internal identifier.

Example:

```
Phrase ID

↓

English

↓

Filipino

↓

Japanese

↓

Spanish
```

The identifier never changes.

Only the localized content changes.

---

# Translation Principles

Translations should prioritize:

- Meaning
- Recognition
- Natural wording
- Gameplay quality

Literal translation should not be required if it harms gameplay.

---

# Regional Variations

Some phrases may differ by region.

Examples include:

- Vocabulary
- Spelling
- Brand names
- Place names
- Educational terminology

Regional differences should be supported without duplicating the entire content library.

---

# Metadata Localization

The following metadata may be translated:

- Category names
- Category descriptions
- Achievement names
- Achievement descriptions
- Deck names
- User interface labels
- Tutorials
- Notifications

Internal identifiers should remain language-independent.

---

# Gameplay Considerations

Localization must preserve gameplay.

Reviewers should verify:

- Recognition remains fair.
- Difficulty remains appropriate.
- Gibberish generation still functions correctly.
- Hint systems remain useful.
- Timers remain reasonable.

Gameplay quality takes priority over literal translation.

---

# SQLite Support

Future offline architecture may store localized content within SQLite.

Example:

```
SQLite

↓

Language Tables

↓

Phrase Tables

↓

Player
```

SQLite allows fast offline language switching without requiring internet connectivity.

---

# Cloud Synchronization

Future online architecture may synchronize localization data through Neon.

```
Neon

↓

Localization API

↓

SQLite Cache

↓

Player
```

Neon serves as the authoritative source for localized content, while SQLite provides offline access.

---

# AI-Assisted Translation

AI may assist with:

- Initial translation
- Grammar suggestions
- Metadata translation
- Consistency checks

Every AI-generated translation should undergo human review before release.

---

# Quality Assurance

Localized content should be reviewed for:

- Grammar
- Spelling
- Natural language
- Cultural appropriateness
- Difficulty consistency
- Gameplay quality

Translation quality directly impacts player experience.

---

# Future Features

Future localization capabilities may include:

- Runtime language switching
- Downloadable language packs
- Community translation
- Accessibility translations
- Educational localization
- Voice-over support
- Text-to-speech support

The localization architecture should accommodate these features without requiring major redesign.

---

# Related Documents

- 03_CONTENT_STRUCTURE.md
- 04_CATEGORY_GUIDELINES.md
- 06_EDITORIAL_STANDARDS.md
- 10_CULTURAL_GUIDELINES.md
- 12_AI_ASSISTED_CONTENT.md
- 13_CONTENT_VERSIONING.md

---

# Revision History

## Version 1.0.0

- Defined the localization architecture for Anu Sabi.
- Documented language packs, phrase identifiers, metadata localization, gameplay considerations, and future SQLite/Neon integration.