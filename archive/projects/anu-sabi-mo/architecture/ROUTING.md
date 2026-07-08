# 🧭 Routing Architecture

> **Defines how navigation is organized throughout the Anu Sabi application.**

---

# Purpose

This document establishes the routing architecture for Anu Sabi.

It defines how screens are organized, how users navigate through the application, and how routes should be structured as the project grows.

The goals are:

- Predictable navigation
- Scalable route organization
- Maintainable routing
- Consistent user experience

---

# Routing Philosophy

Navigation should be:

- Simple
- Predictable
- Consistent
- Easy to extend
- Easy to maintain

Routes represent user journeys rather than technical implementation.

---

# Technology

Routing is implemented using:

- React Router

All application navigation should use the routing system rather than manually showing or hiding pages.

---

# Route Organization

Routes should follow a feature-based structure.

Example:

```text
routes/

index.tsx

game.routes.ts

profile.routes.ts

settings.routes.ts

admin.routes.ts
```

As the application grows, related routes should remain grouped together.

---

# Primary Navigation

Core application screens include:

```text
Splash

↓

Home

↓

Category Selection

↓

Gameplay

↓

Results

↓

Rewards

↓

Home
```

This represents the primary gameplay loop.

---

# Secondary Screens

Additional screens include:

- Profile
- Achievements
- Statistics
- Settings
- Help
- Credits
- About

These are accessible without interrupting the core gameplay flow.

---

# Future Screens

Potential future routes include:

- Leaderboards
- Daily Challenges
- Online Events
- Marketplace
- Cloud Sync
- User Account
- Community Content

These should integrate naturally into the existing navigation structure.

---

# URL Structure

Example:

```text
/

↓

/home

↓

/play

↓

/results

↓

/profile

↓

/settings
```

Future online features may introduce additional routes while maintaining consistency.

---

# Nested Routes

Nested routes should be used where logical.

Example:

```text
/settings

/settings/profile

/settings/audio

/settings/accessibility

/settings/about
```

This improves organization without increasing complexity.

---

# Navigation Principles

Navigation should:

- Require as few taps as practical
- Make the Back action predictable
- Preserve player progress
- Avoid dead ends
- Provide clear visual feedback

---

# Deep Linking

Current:

Not required.

Future:

Deep linking may support:

- Specific categories
- Daily challenges
- Promotional events
- Shared content
- Notifications

Deep links should always validate their parameters before loading content.

---

# Route Guards

Current version:

No authentication is required.

Future route guards may protect:

- Online profile
- Premium content
- Administrative tools
- Developer screens

Guards should remain lightweight and easy to maintain.

---

# Navigation State

Navigation state should remain independent of business logic.

Avoid storing navigation decisions inside services or database logic.

Instead:

```text
Component

↓

React Router

↓

Destination Page
```

Business logic should determine **whether** navigation is allowed, while React Router determines **how** navigation occurs.

---

# Error Routes

The application should gracefully handle invalid routes.

Examples:

- Unknown page
- Missing content
- Invalid deep link
- Expired event

Players should always have a clear path back to the Home screen.

---

# Accessibility

Navigation should support:

- Keyboard navigation (where applicable)
- Screen readers
- Clear focus indicators
- Consistent navigation order

Accessibility should be considered when designing every new route.

---

# Performance

Routing should prioritize:

- Fast page transitions
- Lazy loading where appropriate
- Efficient code splitting
- Minimal route initialization

Only load feature code when required.

---

# Future Considerations

Potential improvements include:

- Animated page transitions
- Route-based code splitting
- Navigation history restoration
- Multi-window support (desktop)
- PWA navigation enhancements

Future routing improvements should remain compatible with the existing architecture.

---

# Related Documents

- SYSTEM_OVERVIEW.md
- FRONTEND.md
- COMPONENT_ARCHITECTURE.md
- STATE_MANAGEMENT.md
- SERVICES.md

---

# Revision History

## Version 1.0.0

- Established the routing architecture for Anu Sabi.
- Defined navigation principles, route organization, deep linking strategy, and future scalability.