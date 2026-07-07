# 🎨 Frontend Architecture

> **Defines the structure, responsibilities, and organization of the Anu Sabi frontend application.**

---

# Purpose

This document describes how the frontend of Anu Sabi is organized.

It defines the responsibilities of each layer and establishes conventions for building new screens and features.

---

# Frontend Philosophy

The frontend should be:

- Modular
- Component-driven
- Mobile-first
- Offline-first
- Easy to maintain
- Easy to expand

Each part of the frontend should have a single, clearly defined responsibility.

---

# Current Architecture

The frontend is a React Single Page Application (SPA).

```text
React Components

↓

React Context

↓

Data Layer (src/data)

↓

localStorage
```

Business logic and persistence currently reside within the Data Layer.

---

# Folder Organization

```text
src/

├── components/
├── context/
├── data/
├── hooks/
├── lib/
├── pages/
├── styles/
├── types/
└── utils/
```

Each folder should remain focused on one responsibility.

---

# Folder Responsibilities

## components/

Contains reusable UI components.

Examples include:

- Game components
- Home components
- Profile components
- Daily Streak components
- Premium navigation
- Shared UI elements

Components should remain presentation-focused whenever possible.

---

## pages/

Contains route-level screens.

Responsibilities include:

- Composing components
- Handling navigation
- Coordinating user interactions
- Calling Data Layer functions

Pages should avoid implementing complex business rules directly.

---

## context/

Contains shared application state.

Current implementation includes:

- GameContext

Additional contexts should only be introduced when shared state cannot reasonably remain local.

---

## data/

The Data Layer is responsible for:

- Profile management
- Game settings
- Phrase loading
- Badge management
- Daily streak logic
- Score tracking
- Game history

These modules combine business logic with local persistence.

Reference:

- DATA_LAYER.md

---

## hooks/

Contains reusable React hooks.

Current examples include:

- Timer management
- Toast notifications
- Responsive helpers

Hooks should encapsulate reusable UI behavior rather than business rules.

---

## utils/

Contains small, pure helper functions.

Examples:

- Hint generation
- Feedback utilities
- Category labels

Utilities should remain stateless.

---

## types/

Contains shared TypeScript interfaces and type definitions.

Shared types should be defined here rather than duplicated across components.

---

## styles/

Contains feature-specific CSS and global styling.

Tailwind CSS should be preferred for most styling, with custom CSS reserved for larger design systems or complex visual effects.

---

## lib/

Contains shared framework utilities.

Current implementation includes:

- `cn()` utility for Tailwind class merging.

---

# Data Flow

Typical frontend flow:

```text
User Action

↓

Page

↓

Component

↓

Data Layer

↓

localStorage

↓

Updated UI
```

The frontend should communicate with the Data Layer rather than directly interacting with browser storage.

---

# State Responsibilities

Frontend state should be divided into:

### Local State

Examples:

- Form inputs
- Dialog visibility
- Active tabs
- Temporary animations

---

### Shared State

Examples:

- Game settings
- Application-wide preferences

Shared state should use React Context only when necessary.

---

### Persistent State

Examples:

- Player profile
- Scores
- Badges
- History
- Daily streak

Persistent state is managed through the Data Layer.

---

# Navigation

Navigation is managed using React Router.

Route definitions belong to:

- App.tsx
- Route-level pages

Reference:

- ROUTING.md

---

# UI Principles

The interface should emphasize:

- Clear hierarchy
- Responsive layouts
- Fast interactions
- Accessible controls
- Consistent visual language

The Premium Material 3 design language should remain consistent across all screens.

---

# Future Evolution

As online features are introduced, the frontend may evolve toward:

```text
React Components

↓

Custom Hooks

↓

Services

↓

SQLite

↓

Cloud Synchronization
```

The current Data Layer can gradually evolve into a dedicated service architecture without requiring major changes to the UI.

---

# Related Documents

- COMPONENT_ARCHITECTURE.md
- STATE_MANAGEMENT.md
- DATA_LAYER.md
- ROUTING.md
- DATABASE.md

---

# Revision History

## Version 2.0.0

- Updated to reflect the current implementation.
- Documented `src/data` as the active Data Layer.
- Removed assumptions about a separate service layer.
- Clarified responsibilities for each frontend folder.