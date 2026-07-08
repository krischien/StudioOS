# 🏗️ Content Structure

> **Defines the standard structure, metadata, and organization of all content within Anu Sabi.**

---

# Purpose

Every piece of content in Anu Sabi should follow a consistent structure.

A standardized structure allows content to be:

- Easy to manage
- Easy to search
- Easy to localize
- Easy to analyze
- Easy to migrate
- Easy to expand

Regardless of where content is stored, every content item should follow the same logical model.

---

# Design Goals

The content structure should be:

- Consistent
- Scalable
- Database-friendly
- Offline-friendly
- AI-friendly
- Future-proof

It should support both the current local implementation and future cloud-based architectures.

---

# Content Hierarchy

The content library follows a hierarchical organization.

```
Game

↓

Content Library

↓

Category

↓

Phrase

↓

Metadata
```

Each level adds additional organization while keeping individual phrases independent.

---

# Logical Content Model

Every phrase is treated as a standalone content object.

```
Phrase

├── Identity
├── Gameplay
├── Classification
├── Localization
├── Analytics
├── Lifecycle
└── Metadata
```

This structure separates gameplay information from administrative information.

---

# Core Fields

Every phrase should eventually contain the following information.

| Field | Description |
|--------|-------------|
| ID | Unique identifier |
| Phrase | Original text |
| Category | Primary category |
| Difficulty | Gameplay difficulty |
| Language | Source language |
| Status | Draft, Review, Approved, Archived |
| Version | Content version |
| Tags | Optional search keywords |

These fields form the minimum recommended metadata.

---

# Optional Metadata

Future versions may include additional metadata.

Examples include:

- Author
- Reviewer
- Approval Date
- Release Pack
- Source
- Region
- Educational Level
- Age Rating
- Notes

Optional metadata should never affect gameplay directly.

---

# Status Lifecycle

Each content item progresses through defined stages.

```
Draft

↓

Review

↓

Approved

↓

Released

↓

Updated

↓

Archived
```

Archived content remains historically traceable but is no longer distributed.

---

# Categories

Each phrase belongs to a primary category.

Examples include:

- Pinoy
- World
- Movies
- Music
- Food
- Sports
- Science
- Technology

Future versions may support multiple category assignments.

---

# Difficulty Classification

Each phrase is assigned a difficulty level.

Current levels:

- Easy
- Medium
- Hard

Difficulty is based on gameplay design rather than phrase length.

Detailed rules are documented in:

`05_DIFFICULTY_GUIDELINES.md`

---

# Language Support

Every phrase belongs to a language.

Examples:

- English
- Filipino
- Spanish
- Japanese

Future versions may support multiple localized versions of the same phrase.

---

# Tags

Tags improve searchability and organization.

Example tags:

- movie
- classic
- sports
- history
- geography
- education

Tags are primarily intended for internal management rather than gameplay.

---

# Versioning

Each phrase should have an internal version number.

Example:

```
Version 1

↓

Correction

↓

Version 2

↓

Localization Update

↓

Version 3
```

Version history allows safe editing while preserving change history.

---

# Relationships

Content relationships are logical rather than dependent.

Examples:

```
Category

↓

contains

↓

Phrase
```

```
Phrase

↓

belongs to

↓

Release Pack
```

```
Phrase

↓

has

↓

Difficulty
```

Each phrase remains independently identifiable.

---

# Storage Independence

The logical content model is independent of storage technology.

Possible storage implementations include:

Current

- TypeScript data files

Future

- SQLite
- Neon PostgreSQL
- Cloud synchronization
- Downloadable content packs

Changing storage should not require changing the logical structure.

---

# AI Compatibility

The structure is designed to support AI-assisted workflows.

AI systems should be capable of:

- Creating phrases
- Reading metadata
- Assigning categories
- Suggesting difficulty
- Generating tags
- Flagging quality issues

Human review remains the final approval step.

---

# Rambler Engine Compatibility

Procedurally generated content should produce the same logical structure.

Regardless of generation method, every phrase should contain equivalent metadata.

This allows Rambler-generated phrases to integrate seamlessly with manually created content.

---

# Scalability

The structure is designed to scale from:

- Hundreds of phrases

to

- Tens of thousands of phrases

without requiring architectural changes.

Future additions should fit naturally into the same model.

---

# Design Principles

The content structure should remain:

- Simple
- Predictable
- Extensible
- Consistent
- Easy to maintain

The goal is to reduce complexity while supporting future expansion.

---

# Related Documents

- 01_CONTENT_OVERVIEW.md
- 02_PHRASE_GUIDELINES.md
- 04_CATEGORY_GUIDELINES.md
- 05_DIFFICULTY_GUIDELINES.md
- 11_RAMBLER_CONTENT.md
- 13_CONTENT_VERSIONING.md

---

# Revision History

## Version 1.0.0

- Defined the standard logical structure for all Anu Sabi content.
- Established required and optional metadata.
- Documented lifecycle stages, relationships, storage independence, and future compatibility with SQLite, Neon, AI-assisted workflows, and the Rambler Engine.