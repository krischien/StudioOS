# 🧩 Component Architecture

> **Defines how React components are designed, organized, documented, and maintained within Anu Sabi.**

---

# Purpose

This document establishes the standards for building React components in Anu Sabi.

Its goal is to ensure components are:

- Reusable
- Predictable
- Maintainable
- Accessible
- Easy to test
- Easy to document

Every frontend component should follow the conventions described here.

---

# Design Philosophy

Components should be:

- Small
- Focused
- Reusable
- Composable
- Easy to understand

A component should solve one problem well.

If a component becomes responsible for multiple unrelated tasks, it should be split.

---

# Component Hierarchy

Anu Sabi organizes UI into five layers.

```text
Pages
    ↓
Layouts
    ↓
Feature Components
    ↓
Shared Components
    ↓
Primitive UI Components
```

---

# 1. Pages

Pages represent complete application screens.

Examples:

```
HomePage
GamePage
ResultPage
ProfilePage
SettingsPage
```

Responsibilities:

- Compose features
- Load data
- Handle navigation
- Coordinate state

Pages should contain very little UI logic.

---

# 2. Layouts

Layouts define shared page structure.

Examples:

```
MobileLayout
GameLayout
SettingsLayout
```

Responsibilities:

- Headers
- Navigation
- Safe areas
- Shared spacing
- Footer
- Screen containers

---

# 3. Feature Components

Feature Components belong to a single feature.

Examples:

```
PuzzleBoard
AnswerInput
CoinCounter
BadgeDisplay
Timer
LeaderboardCard
```

These components should not be reused by unrelated features.

---

# 4. Shared Components

Reusable application components.

Examples:

```
Button
Card
Modal
Dialog
Avatar
Tabs
ProgressBar
Toast
```

These components may be used anywhere.

---

# 5. Primitive UI Components

Small reusable building blocks.

Examples:

```
Icon
Text
Divider
Spinner
Chip
Label
Container
```

Primitive components should contain minimal business logic.

---

# Recommended Folder Structure

Example:

```text
components/

Button/
    Button.tsx
    Button.types.ts
    Button.test.tsx
    index.ts

Card/
    Card.tsx
    Card.types.ts
    Card.test.tsx
    index.ts

Modal/
```

Larger components may also include:

```text
Component/

Component.tsx
Component.types.ts
Component.hooks.ts
Component.styles.ts
Component.test.tsx
README.md
index.ts
```

---

# Component Naming

Use PascalCase.

Correct:

```
PuzzleBoard
CoinCounter
PlayerAvatar
GameTimer
```

Avoid:

```
puzzleBoard
coin_counter
board2
component1
```

Names should describe purpose rather than appearance.

---

# Props Design

Components should expose a minimal and meaningful API.

Good:

```tsx
<Button
    variant="primary"
    disabled={false}
    onClick={handleStart}
/>
```

Avoid excessive boolean props.

Instead of:

```tsx
<Button
    red
    large
    rounded
    shadow
/>
```

Prefer:

```tsx
<Button
    variant="danger"
    size="lg"
/>
```

---

# Composition Over Configuration

Prefer composing components instead of creating dozens of configuration props.

Good:

```tsx
<Card>
    <Card.Header />
    <Card.Body />
    <Card.Footer />
</Card>
```

Rather than:

```tsx
<Card
    showHeader
    showFooter
    compact
    bordered
    rounded
/>
```

---

# Business Logic

Business logic should remain outside reusable UI components.

Avoid:

```
Button

↓

SQLite Query
```

Preferred:

```
Button

↓

Callback

↓

Hook

↓

Service

↓

SQLite
```

Components should display data rather than retrieve it.

---

# State Ownership

Keep state as close as possible to where it is used.

Local state:

- Dialog open/close
- Hover
- Form input
- Animation

Shared state:

- Player profile
- Coins
- XP
- Current game
- Settings

Persistent state:

- SQLite

---

# Styling

Tailwind CSS is the default styling approach.

Guidelines:

- Utility classes first
- Reusable variants
- Avoid inline styles
- Consistent spacing
- Responsive by default

---

# Accessibility

Every reusable component should support accessibility.

Examples:

- Keyboard interaction
- Focus indicators
- Semantic HTML
- ARIA attributes where appropriate
- Screen reader compatibility

Accessibility should be considered during development rather than added later.

---

# Performance

Reusable components should:

- Avoid unnecessary renders
- Accept stable props where possible
- Memoize only when justified
- Render efficiently

Optimization should be based on profiling rather than assumptions.

---

# Testing

Shared components should include tests where appropriate.

Testing focuses on:

- Rendering
- Interaction
- Props
- Accessibility
- Edge cases

Testing strategy is documented separately.

---

# Documentation

Complex reusable components should include a local README.

Example:

```text
Button/

README.md
Button.tsx
Button.types.ts
Button.test.tsx
```

The README should describe:

- Purpose
- Props
- Usage examples
- Accessibility considerations
- Known limitations

---

# Future Considerations

Potential future improvements include:

- Storybook integration
- Automated visual regression testing
- Design token synchronization
- Component playground
- Shared UI package

These additions should enhance, not replace, the existing architecture.

---

# Related Documents

- FRONTEND.md
- STATE_MANAGEMENT.md
- ROUTING.md
- SERVICES.md
- TECH_STACK.md

---

# Revision History

## Version 1.0.0

- Established the official component architecture for Anu Sabi.
- Defined component hierarchy, folder organization, naming conventions, composition patterns, accessibility expectations, and testing guidelines.