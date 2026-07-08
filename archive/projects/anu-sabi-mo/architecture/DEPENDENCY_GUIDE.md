# 📦 Dependency Guide

> **Documents every major dependency used by Anu Sabi, its purpose, current usage, and future considerations.**

---

# Purpose

This document explains why each major dependency exists within the project.

Its goals are to:

- Prevent unnecessary dependencies
- Help new contributors understand the technology stack
- Identify unused or future-ready packages
- Guide dependency updates and removals

Every dependency should have a clear purpose.

---

# Dependency Philosophy

Before adding a new dependency, consider:

- Does an existing library already solve the problem?
- Is the package actively maintained?
- Is the added bundle size justified?
- Does it simplify development?
- Will it still be useful long-term?

Avoid adding libraries for small utilities that can be implemented with native JavaScript.

---

# Core Framework

## React

**Purpose**

Primary UI framework.

**Current Status**

Core dependency.

**Required**

✅ Yes

---

## React DOM

**Purpose**

Renders the React application into the browser.

**Current Status**

Core dependency.

**Required**

✅ Yes

---

## TypeScript

**Purpose**

Static type checking and improved developer experience.

**Current Status**

Used throughout the project.

**Required**

✅ Yes

---

## Vite

**Purpose**

Development server and production build tool.

**Current Status**

Primary build system.

**Required**

✅ Yes

---

# Routing

## React Router DOM

**Purpose**

Client-side routing.

Current routes include:

- Home
- Game
- Categories
- Achievements
- Leaderboard
- Profile
- Settings
- Daily Streak
- Premium
- Coming Soon

**Required**

✅ Yes

---

# Mobile

## Capacitor

Packages:

- @capacitor/core
- @capacitor/android
- @capacitor/ios
- @capacitor/cli

Purpose:

Provides Android and iOS support from a single React codebase.

**Current Status**

Fully integrated.

**Required**

✅ Yes

---

# Styling

## Tailwind CSS

Purpose:

Primary styling framework.

**Required**

✅ Yes

---

## tailwindcss-animate

Purpose:

Reusable animation utilities.

**Required**

✅ Yes

---

## PostCSS

Purpose:

Processes Tailwind during builds.

**Required**

✅ Yes

---

## Autoprefixer

Purpose:

Automatically adds vendor prefixes.

**Required**

✅ Yes

---

# UI Components

## Radix UI

Purpose:

Accessible UI primitives.

Examples:

- Dialog
- Sheet
- Tabs
- Tooltip
- Popover
- Dropdown
- Alert Dialog

Current Status:

Used through shadcn/ui components.

**Required**

✅ Yes

---

## shadcn/ui

Purpose:

Provides reusable UI components built on Radix UI and Tailwind CSS.

Current Status:

Foundation of the application's interface.

**Required**

✅ Yes

---

## class-variance-authority

Purpose:

Component variant management.

**Required**

✅ Yes

---

## clsx

Purpose:

Conditional CSS class composition.

**Required**

✅ Yes

---

## tailwind-merge

Purpose:

Safely merges Tailwind utility classes.

**Required**

✅ Yes

---

# Icons

## lucide-react

Purpose:

Application icons.

Material Symbols are also used where appropriate.

**Required**

✅ Yes

---

# Notifications

## sonner

Purpose:

Toast notifications.

**Required**

✅ Yes

---

# Forms

## react-hook-form

Purpose:

Form state management.

**Current Usage**

Limited.

Provides a scalable solution for future forms.

---

## zod

Purpose:

Schema validation.

Current usage is limited but recommended for future forms and API validation.

---

## @hookform/resolvers

Purpose:

Connects Zod with React Hook Form.

---

# Data Fetching

## TanStack Query

Purpose:

Future server state management.

Current Status:

Provider is installed but no active queries or mutations exist.

Reason:

Prepared for future cloud synchronization and backend APIs.

Removal is **not recommended**, as it aligns with the planned Neon backend.

---

# Charts

## Recharts

Purpose:

Chart rendering.

Current Usage:

Minimal.

Potential future uses:

- Player statistics
- Analytics
- Progress tracking

---

# Drawer

## Vaul

Purpose:

Mobile drawer component.

Current Usage:

Available through UI components.

---

# Carousel

## Embla Carousel

Purpose:

Carousel support.

Current Usage:

Limited.

Retained for future UI enhancements.

---

# OTP

## input-otp

Purpose:

OTP input component.

Current Usage:

Not actively used.

Future authentication may require it.

---

# Panels

## react-resizable-panels

Purpose:

Resizable layouts.

Current Usage:

Minimal.

Potential future use for admin tools or desktop layouts.

---

# Themes

## next-themes

Purpose:

Theme management.

Current Usage:

Installed through shadcn ecosystem.

Future use may include dark mode and user-selectable themes.

---

# Date Utilities

## date-fns

Purpose:

Date calculations.

Current Usage:

Supports streak and calendar functionality.

---

## react-day-picker

Purpose:

Calendar components.

Used within the Daily Streak experience.

---

# Testing

## Vitest

Purpose:

Unit and integration testing.

Current Status:

Configured.

Coverage is currently minimal.

---

## Testing Library

Purpose:

React component testing.

---

## jsdom

Purpose:

Browser simulation during automated tests.

---

# Linting

## ESLint

Purpose:

Static code analysis.

---

## typescript-eslint

Purpose:

TypeScript linting.

---

## eslint-plugin-react-hooks

Purpose:

Ensures proper Hook usage.

---

# Development Utilities

## lovable-tagger

Purpose:

Development tooling for Lovable.

Only enabled during development builds.

Not included in production.

---

# Current Dependency Assessment

| Category | Status |
|----------|--------|
| Core Framework | Stable |
| UI Components | Stable |
| Styling | Stable |
| Mobile | Stable |
| Routing | Stable |
| Testing | Ready for expansion |
| Server State | Installed for future backend |
| Authentication | Planned |
| Analytics | Planned |

---

# Candidate Review List

The following packages should be periodically reviewed:

- Recharts
- Embla Carousel
- input-otp
- react-resizable-panels
- next-themes

These are retained because they support planned functionality, but their continued inclusion should be reassessed as the project evolves.

---

# Dependency Update Policy

Dependencies should be updated:

- Regularly
- One major package at a time
- After verifying compatibility
- After running the complete test suite

Avoid upgrading multiple major packages simultaneously.

---

# Adding New Dependencies

Before introducing a package:

1. Verify there is no existing solution.
2. Evaluate maintenance activity.
3. Assess bundle size impact.
4. Review license compatibility.
5. Document the reason for inclusion.

Every new dependency should also be added to this document.

---

# Related Documents

- TECH_STACK.md
- CODING_STANDARDS.md
- BUILD_DEPLOYMENT.md
- FUTURE_ARCHITECTURE.md

---

# Revision History

## Version 1.0.0

- Documented all major project dependencies.
- Recorded current usage based on the technical audit.
- Identified future-ready and review-candidate packages.
- Established dependency management guidelines.