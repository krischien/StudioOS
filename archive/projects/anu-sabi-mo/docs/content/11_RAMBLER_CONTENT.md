# 🧩 Rambler Engine Content

> **Defines how the Rambler Engine generates, validates, scores, and manages procedural content within Anu Sabi.**

---

# Purpose

The Rambler Engine expands Anu Sabi beyond a fixed phrase library by generating new playable content while maintaining the same quality standards as manually authored phrases.

The engine should produce content that is:

- Fair
- Consistent
- Recognizable
- Replayable
- Enjoyable

Procedural generation should increase variety without sacrificing quality.

---

# Design Goals

The Rambler Engine should:

- Increase replayability
- Reduce repetitive gameplay
- Support unlimited future content
- Maintain editorial standards
- Support offline generation where possible
- Integrate with future cloud services

Generated content should feel indistinguishable from handcrafted content.

---

# Core Principles

Every generated phrase should satisfy the same requirements as manually authored phrases.

The engine should ensure:

- Readability
- Recognizability
- Appropriate difficulty
- Correct categorization
- Consistent metadata

Generation is only the first step. Validation remains essential.

---

# High-Level Workflow

```
Content Source

↓

Candidate Selection

↓

Phrase Generation

↓

Metadata Assignment

↓

Validation

↓

Difficulty Estimation

↓

Editorial Rules

↓

Gameplay Rules

↓

Player
```

Every generated phrase should pass through each stage before becoming playable.

---

# Generation Sources

The Rambler Engine may use multiple content sources.

Examples include:

- Built-in phrase libraries
- Category datasets
- Downloadable content packs
- AI-assisted phrase generation
- Educational datasets
- Community-approved content
- Future online repositories

The source of a phrase should not affect the quality requirements.

---

# Phrase Generation

The engine may generate content by:

- Selecting existing phrases
- Combining approved components
- Producing AI-assisted candidates
- Expanding themed content packs
- Generating event-specific phrases

Every generated phrase receives a unique internal identifier.

---

# Metadata Generation

Each generated phrase should include metadata such as:

- Phrase ID
- Category
- Difficulty
- Language
- Region
- Source
- Tags
- Version
- Creation timestamp

Metadata enables search, filtering, analytics, and future updates.

---

# Validation

Generated phrases should be validated before use.

Validation includes checking:

- Required metadata
- Duplicate identifiers
- Duplicate phrases
- Formatting
- Language support
- Category compatibility

Invalid phrases should be rejected automatically.

---

# Editorial Compliance

Generated content should comply with the Editorial Standards.

Validation includes:

- Spelling
- Grammar
- Capitalization
- Punctuation
- Naming consistency

Editorial compliance should be verified before gameplay evaluation.

---

# Gameplay Validation

Generated phrases should be evaluated for gameplay quality.

Review includes:

- Recognition fairness
- Gibberish quality
- Hint quality
- Timer suitability
- Difficulty consistency
- Category accuracy

Only gameplay-ready phrases should be delivered to players.

---

# Difficulty Estimation

The Rambler Engine should estimate difficulty using the official difficulty framework.

Factors include:

- Familiarity
- Phrase length
- Vocabulary complexity
- Recognition speed
- Cultural specificity
- Historical solve rates (when available)

Difficulty estimates may be refined through analytics over time.

---

# Duplicate Prevention

The engine should minimize repeated content.

Strategies may include:

- Phrase ID comparison
- Text similarity checks
- Semantic similarity analysis
- Recent history filtering
- Player history filtering

Reducing repetition improves replayability.

---

# Offline Compatibility

The Rambler Engine should support offline gameplay whenever possible.

Future implementations may generate content using:

```
SQLite Content Cache

↓

Local Rambler Engine

↓

Player
```

Offline support remains a long-term design objective.

---

# Cloud Integration

Future online architecture may extend the Rambler Engine.

```
Neon Repository

↓

Content Service

↓

Rambler Engine

↓

SQLite Cache

↓

Player
```

Neon serves as the authoritative content source, while SQLite enables fast offline access.

---

# AI Integration

AI may assist the Rambler Engine by:

- Suggesting new phrases
- Generating candidate content
- Estimating difficulty
- Recommending categories
- Detecting duplicates
- Improving metadata

AI-generated content should always pass through the same validation pipeline.

---

# Analytics Feedback

Gameplay analytics should improve future generation.

Examples include:

- Solve rate
- Skip frequency
- Hint usage
- Completion time
- Player ratings
- Error reports

Analytics allow the engine to continuously improve generated content.

---

# Safety

The Rambler Engine should prevent generation of content that is:

- Offensive
- Discriminatory
- Explicit
- Misleading
- Copyright-sensitive
- Outside approved categories

Safety rules apply equally to manual and generated content.

---

# Future Enhancements

Future versions of the Rambler Engine may support:

- Personalized phrase selection
- Adaptive difficulty
- Seasonal generation
- Educational learning paths
- Community-approved generation
- Live content synchronization
- AI-assisted procedural expansion

The architecture should support these capabilities without major redesign.

---

# Related Documents

- 02_PHRASE_GUIDELINES.md
- 05_DIFFICULTY_GUIDELINES.md
- 06_EDITORIAL_STANDARDS.md
- 07_CONTENT_REVIEW_PROCESS.md
- 08_CONTENT_PIPELINE.md
- 10_CULTURAL_GUIDELINES.md
- 12_AI_ASSISTED_CONTENT.md
- 15_CONTENT_ANALYTICS.md

---

# Revision History

## Version 1.0.0

- Established the content architecture for the Rambler Engine.
- Defined generation workflow, metadata, validation, duplicate prevention, analytics feedback, AI integration, offline support, and future cloud synchronization using SQLite and Neon.