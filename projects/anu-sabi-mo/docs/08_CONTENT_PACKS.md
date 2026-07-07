---
Document ID: DOC-008
Title: Content Packs
Version: 1.0.0
Status: CURRENT
Owner: Kristian Arendain
Maintainer: Ziv (ChatGPT)
Last Updated: 2026-07-07

Purpose:
Define how game content is organized, created, reviewed, expanded, and maintained throughout the lifetime of Anu Sabi.

Related Documents:
- 02_GAME_DESIGN.md
- 03_GAMEPLAY.md
- 06_ECONOMY.md
- 07_MONETIZATION.md
- 11_RESEARCH.md
---

# 📚 Content Packs

> *Content is the heartbeat of Anu Sabi. Every new phrase pack extends the life of the game while preserving its simple, enjoyable gameplay.*

---

# Purpose

This document defines the structure, organization, quality standards, and lifecycle of content packs within Anu Sabi.

The goal is to ensure that every new pack feels consistent with the game's vision while making it easy for the team to expand the game over time.

---

# Content Philosophy

Rather than continuously introducing new mechanics, Anu Sabi grows through high-quality content.

Every content pack should:

- Be fun
- Be culturally relevant
- Be easy to understand
- Encourage replayability
- Maintain a consistent level of quality

---

# What is a Content Pack?

A content pack is a curated collection of phrases, words, or expressions grouped around a common theme.

Examples include:

- Filipino Idioms
- Famous Quotes
- Food & Cuisine
- Philippine History
- Movies & TV
- OPM Songs
- Sports
- Science
- Technology
- Regional Languages
- Holidays
- Pop Culture

Each pack should have a clear identity and target audience.

---

# Content Pack Structure

Each content pack should include:

- Name
- Description
- Category
- Difficulty
- Number of entries
- Unlock requirements
- Estimated play time
- Version
- Status (Draft, Testing, Released, Archived)

---

# Phrase Structure

Each phrase entry should contain structured metadata.

Example:

```yaml
id: PHR-000001

phrase: "Bahala na"

category: Filipino Expressions

difficulty: Easy

language: Filipino

answer: Bahala na

hint: Common Filipino expression

tags:
  - Culture
  - Everyday
  - Positive

status: Approved
```

Additional metadata may be added as the content pipeline evolves.

---

# Difficulty Levels

Content should be classified into difficulty levels:

- Easy
- Medium
- Hard
- Expert

Difficulty should consider:

- Phrase familiarity
- Word length
- Vocabulary complexity
- Cultural specificity

---

# Categories

Content categories may include:

## Language

- Common Words
- Everyday Expressions
- Idioms
- Proverbs

---

## Culture

- Traditions
- Festivals
- Filipino Customs
- Local Humor

---

## Entertainment

- Movies
- Television
- Music
- Celebrities

---

## Education

- Science
- Mathematics
- Geography
- History

---

## Lifestyle

- Food
- Sports
- Travel
- Technology

---

# Unlock Strategy

Content may be unlocked through:

- Player Level
- Coins
- Achievements
- Events
- Premium Purchase
- Seasonal Rewards

The unlock system should encourage exploration rather than restrict enjoyment.

---

# Seasonal Packs

Limited-time content may include:

- Christmas
- New Year
- Valentine's Day
- Holy Week
- Independence Day
- Halloween

Seasonal packs should return on a predictable rotation where appropriate.

---

# Premium Content

Premium packs should provide:

- More variety
- New themes
- Exclusive cosmetics (where applicable)

Premium content should never provide gameplay advantages.

---

# Content Creation Workflow

Every new pack follows the same pipeline.

```text
Idea
    ↓
Research
    ↓
Draft
    ↓
Internal Review
    ↓
Playtesting
    ↓
Revision
    ↓
Approval
    ↓
Release
    ↓
Player Feedback
    ↓
Future Updates
```

This workflow helps maintain quality and consistency.

---

# Quality Standards

Every phrase should be:

- Accurate
- Grammatically correct
- Culturally respectful
- Family-friendly (unless a mature pack is intentionally created)
- Free of offensive content
- Appropriate for its target audience

Quality should always take precedence over quantity.

---

# Localization

Although Anu Sabi is Filipino-first, future localization may include:

- English interface
- Regional Filipino languages
- Mixed-language packs

Localization should preserve cultural meaning whenever possible.

---

# AI-Assisted Content

AI may assist with:

- Draft phrase generation
- Categorization
- Metadata suggestions
- Difficulty estimation
- Duplicate detection

Human review is required before any AI-generated content is released.

---

# Future Expansion

Possible future content includes:

- Community-voted packs
- Creator collaborations
- Educational editions
- School partnerships
- Charity packs
- Regional culture collections

Expansion should strengthen the game's identity rather than dilute it.

---

# Success Metrics

The content system is successful when:

- New packs are easy to create.
- Content remains consistently high quality.
- Players continue discovering new experiences.
- Replayability increases over time.
- Expansion does not require gameplay redesign.

---

# Related Documents

- **06_ECONOMY.md** — Unlocks and progression
- **07_MONETIZATION.md** — Premium content strategy
- **11_RESEARCH.md** — Research methodology
- **content/** — Source files and phrase databases

---

# Revision History

## Version 1.0.0

- Established the official content pack framework.
- Defined content structure, metadata, workflows, quality standards, and future expansion strategy.