# 🚀 Build & Deployment

> **Defines the build process, deployment workflow, release strategy, and future CI/CD pipeline for Anu Sabi.**

---

# Purpose

This document describes how Anu Sabi is built, tested, packaged, and released.

It serves as the deployment reference for developers working on web and mobile versions of the application.

---

# Current Deployment Philosophy

Anu Sabi follows a simple deployment philosophy:

- One codebase
- Multiple platforms
- Offline-first
- Automated builds where practical
- Repeatable release process

The project currently targets:

- Web
- Android
- iOS

---

# Current Technology Stack

| Technology | Purpose |
|------------|---------|
| Vite | Development server and production builds |
| React | Frontend framework |
| TypeScript | Application language |
| Capacitor | Android and iOS wrapper |
| npm | Package management |

---

# Build Pipeline

Current build flow:

```text
TypeScript

↓

React

↓

Vite Build

↓

dist/

↓

Capacitor Sync

↓

Android / iOS Projects
```

The `dist/` folder serves as the source for all production builds.

---

# Development Workflow

Start the development server:

```bash
npm install

npm run dev
```

Default development server:

```
http://localhost:8080
```

---

# Production Build

Generate a production build:

```bash
npm run build
```

Output:

```text
dist/
```

This directory contains the optimized production assets.

---

# Preview Production Build

Preview the production build locally:

```bash
npm run preview
```

This allows validation before deployment.

---

# Capacitor Workflow

After building the application:

```bash
npm run cap:sync
```

This copies the latest web assets into the native projects.

---

## Android

Run the Android application:

```bash
npm run cap:android
```

Open Android Studio:

```bash
npm run cap:open:android
```

---

## iOS

Run the iOS application:

```bash
npm run cap:ios
```

Open Xcode:

```bash
npm run cap:open:ios
```

---

# Current Build Scripts

| Script | Purpose |
|---------|---------|
| npm run dev | Development server |
| npm run build | Production build |
| npm run build:dev | Development-mode build |
| npm run preview | Preview production build |
| npm run lint | Code quality checks |
| npm run test | Run automated tests |
| npm run test:watch | Continuous testing |
| npm run cap:sync | Synchronize Capacitor assets |
| npm run cap:android | Build and run Android |
| npm run cap:ios | Build and run iOS |

---

# Release Workflow

Recommended release process:

```text
Development

↓

Testing

↓

Lint

↓

Production Build

↓

Capacitor Sync

↓

Native Platform Build

↓

Manual QA

↓

Release
```

Each stage should complete successfully before proceeding to the next.

---

# Versioning

The project should follow Semantic Versioning (SemVer).

Format:

```text
MAJOR.MINOR.PATCH
```

Example:

```text
1.0.0
1.1.0
1.1.1
2.0.0
```

Guidelines:

- MAJOR → Breaking changes
- MINOR → New features
- PATCH → Bug fixes

---

# Build Validation

Before every release:

- Project builds successfully
- TypeScript compiles
- Lint passes
- Tests pass
- Application launches
- Navigation works
- Save/load functions correctly

---

# Deployment Targets

Current supported targets:

## Web

Static hosting providers such as:

- Vercel
- Netlify
- GitHub Pages
- Cloudflare Pages

---

## Android

Distributed through:

- Google Play Store
- Internal testing
- APK distribution

---

## iOS

Distributed through:

- Apple App Store
- TestFlight

---

# Environment Configuration

The current implementation does not use environment variables.

Future versions may introduce:

- Development
- Staging
- Production

configuration environments.

---

# Future CI/CD

Future automated pipeline:

```text
Git Push

↓

GitHub Actions

↓

Install Dependencies

↓

Lint

↓

Tests

↓

Build

↓

Artifact Generation

↓

Release
```

Potential future integrations:

- GitHub Actions
- Play Store deployment
- TestFlight deployment
- Automated changelog generation

---

# Release Checklist

Before publishing a release:

- Documentation updated
- Version number updated
- CHANGELOG updated
- Build successful
- Manual QA completed
- Android verified
- iOS verified
- Release artifacts archived

---

# Rollback Strategy

Every release should be recoverable.

Recommended practices:

- Preserve previous release artifacts
- Maintain Git tags
- Keep release notes
- Avoid destructive migrations

---

# Related Documents

- TECH_STACK.md
- TESTING_STRATEGY.md
- CODING_STANDARDS.md
- PERFORMANCE.md

---

# Revision History

## Version 1.0.0

- Documented the complete build and deployment workflow.
- Added Capacitor build process.
- Defined release strategy and future CI/CD pipeline.