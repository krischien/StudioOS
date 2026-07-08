# 🗂️ Category Guidelines

> **Defines how phrases are grouped into categories, how categories evolve over time, and the standards for creating new content collections within Anu Sabi.**

---

# Purpose

Categories organize the game's content into meaningful collections.

They allow players to:

- Play topics they enjoy
- Discover new content
- Adjust gameplay variety
- Increase replayability

A well-designed category system also simplifies content management, analytics, localization, and future expansion.

---

# Design Goals

The category system should be:

- Easy to understand
- Easy to navigate
- Balanced
- Scalable
- Consistent
- Future-proof

Categories should make content easier to discover without overwhelming players.

---

# Current Categories

The current implementation includes three playable categories:

- Pinoy
- World
- Mixed

The Mixed category combines content from all playable categories.

---

# Planned Categories

Future releases may introduce additional categories, including:

- Movies
- Television
- Music
- Food
- Sports
- Technology
- Science
- Geography
- History
- Nature
- Animals
- Brands
- Famous People
- Books
- Games
- Internet Culture
- Festivals
- Holidays
- Education
- Kids

Additional categories may be added without affecting existing content.

---

# Category Hierarchy

Categories should remain relatively flat for simplicity.

```
Content Library

↓

Category

↓

Phrase
```

Future versions may introduce optional subcategories if needed.

Example:

```
Movies

├── Action
├── Comedy
├── Horror
└── Animation
```

Subcategories should only be introduced when they provide clear value.

---

# Category Assignment

Every phrase should belong to at least one primary category.

Future versions may support:

- Multiple categories
- Secondary categories
- Dynamic collections
- Seasonal collections

A phrase should never exist without a category.

---

# Category Balance

Each category should contain enough phrases to provide a satisfying gameplay experience.

Categories should avoid:

- Extremely small collections
- Excessive duplication
- Significant quality differences
- Large difficulty imbalances

Growth should prioritize consistency over quantity.

---

# Category Independence

Each category should function independently.

This allows:

- Separate downloads
- Premium packs
- Educational packs
- Event content
- Regional content

Changes to one category should not negatively affect others.

---

# Naming Standards

Category names should be:

- Short
- Clear
- Recognizable
- Consistent
- Easy to localize

Avoid:

- Internal code names
- Abbreviations
- Ambiguous wording

Players should immediately understand the category's purpose.

---

# Difficulty Distribution

Each category should contain a healthy mix of:

- Easy
- Medium
- Hard

Difficulty should be balanced throughout the collection rather than concentrated in one area.

---

# Localization

Categories should support localization.

Examples:

- Display names
- Descriptions
- Icons
- Promotional artwork

The internal identifier should remain stable across all languages.

---

# Metadata

Each category should eventually include metadata such as:

| Field | Description |
|--------|-------------|
| ID | Unique identifier |
| Name | Display name |
| Description | Player-facing explanation |
| Icon | Visual identifier |
| Language Support | Available translations |
| Status | Active, Upcoming, Archived |
| Version | Category version |
| Release Pack | Associated release |

Metadata simplifies maintenance and analytics.

---

# Future Expansion

The category system should support future content such as:

- Premium categories
- Downloadable content
- Seasonal events
- Educational modules
- Community-created packs
- Sponsored collections
- AI-generated collections
- Rambler-generated collections

The addition of new categories should require minimal architectural changes.

---

# Analytics

Category-level analytics may include:

- Most played categories
- Completion rates
- Average scores
- Average solve times
- Player favorites
- Difficulty distribution
- Hint usage

These metrics help guide future content development.

---

# Quality Standards

Every category should:

- Have a clear theme
- Be internally consistent
- Contain high-quality phrases
- Offer balanced difficulty
- Avoid unnecessary duplication
- Support future localization

Quality should remain consistent regardless of category size.

---

# Relationship to Gameplay

Categories influence multiple gameplay systems, including:

- Game setup
- Phrase selection
- Daily Challenges
- Rambler Engine generation
- Future achievements
- Seasonal events
- Leaderboards
- Player preferences

Categories are one of the primary ways players personalize their gameplay experience.

---

# Future Vision

The category system is designed to evolve into a modular content ecosystem capable of supporting:

- Thousands of categories
- Multiple languages
- Educational curricula
- Regional content
- Community content
- AI-assisted expansion
- Downloadable packs
- Cloud synchronization

The organizational model should remain stable regardless of scale.

---

# Related Documents

- 01_CONTENT_OVERVIEW.md
- 02_PHRASE_GUIDELINES.md
- 03_CONTENT_STRUCTURE.md
- 05_DIFFICULTY_GUIDELINES.md
- 09_LOCALIZATION.md
- 11_RAMBLER_CONTENT.md

---

# Revision History

## Version 1.0.0

- Defined the organizational principles for content categories.
- Established standards for category creation, balance, metadata, localization, analytics, and long-term scalability.