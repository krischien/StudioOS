# Tech Stack — Anu-Sabi

> Technologies present in `package.json` and used by the application.  
> **Last updated:** 2026-07-08

---

## Core runtime

| Technology | Version | Role |
|------------|---------|------|
| React | ^18.3.1 | UI framework |
| React DOM | ^18.3.1 | Rendering |
| TypeScript | ^5.8.3 | Type system |
| Vite | ^5.4.19 | Dev server + bundler |
| @vitejs/plugin-react-swc | ^3.11.0 | React transform (SWC) |

## Routing

| Technology | Version | Role |
|------------|---------|------|
| react-router-dom | ^6.30.1 | Client-side SPA routing |

## Mobile (Capacitor)

| Technology | Version | Role |
|------------|---------|------|
| @capacitor/core | ^7.5.0 | Native bridge |
| @capacitor/cli | ^7.5.0 | CLI (`cap sync`, `cap run`) |
| @capacitor/android | ^7.5.0 | Android platform |
| @capacitor/ios | ^7.5.0 | iOS platform |

**Android:** Gradle project in `android/` — opened via Android Studio (`npm run cap:open:android`).

**iOS:** Xcode project in `ios/` — requires macOS + CocoaPods for builds.

## Styling

| Technology | Version | Role |
|------------|---------|------|
| Tailwind CSS | ^3.4.17 | Utility CSS |
| tailwindcss-animate | ^1.0.7 | Animation utilities |
| postcss | ^8.5.6 | CSS processing |
| autoprefixer | ^10.4.21 | Vendor prefixes |
| @tailwindcss/typography | ^0.5.16 | Typography plugin (dev) |

**Custom CSS:** `src/styles/premium-home.css`, `src/styles/daily-streak.css`

**Fonts (CDN in `index.html`):** Plus Jakarta Sans, Material Symbols Outlined

## shadcn/ui

Pattern: Radix UI primitives + Tailwind in `src/components/ui/`.

| Supporting package | Version |
|--------------------|---------|
| class-variance-authority | ^0.7.1 |
| clsx | ^2.1.1 |
| tailwind-merge | ^2.6.0 |
| lucide-react | ^0.462.0 |
| @radix-ui/react-* | ^1.x–^2.x (20 packages) |
| vaul | ^0.9.9 |
| sonner | ^1.7.4 |
| cmdk | ^1.1.1 |
| embla-carousel-react | ^8.6.0 |
| react-day-picker | ^8.10.1 |
| date-fns | ^3.6.0 |
| recharts | ^2.15.4 |
| input-otp | ^1.4.2 |
| react-resizable-panels | ^2.1.9 |

Config: `components.json` at repository root.

## State / data fetching

| Technology | Version | Status |
|------------|---------|--------|
| @tanstack/react-query | ^5.83.0 | **Installed only** — provider in `App.tsx`, no queries used |

## Forms (installed, limited game use)

| Technology | Version |
|------------|---------|
| react-hook-form | ^7.61.1 |
| @hookform/resolvers | ^3.10.0 |
| zod | ^3.25.76 |

## Testing

| Technology | Version | Role |
|------------|---------|------|
| Vitest | ^3.2.4 | Test runner |
| jsdom | ^20.0.3 | DOM environment |
| @testing-library/react | ^16.0.0 | Component tests |
| @testing-library/jest-dom | ^6.6.0 | Matchers |

Config: `vitest.config.ts`, setup `src/test/setup.ts`

## Linting

| Technology | Version |
|------------|---------|
| ESLint | ^9.32.0 |
| typescript-eslint | ^8.38.0 |
| eslint-plugin-react-hooks | ^5.2.0 |
| eslint-plugin-react-refresh | ^0.4.20 |

## Persistence

| Technology | Status |
|------------|--------|
| SQLite | **Not used** |
| localStorage | **Sole persistence layer** |
| Backend API | **Not used** |

## Package manager

| Tool | Evidence |
|------|----------|
| npm | `package-lock.json`, npm scripts |
| bun | `bun.lockb` present; no bun-specific scripts |

---

## Build commands

| Command | Purpose |
|---------|---------|
| `npm run dev` | Vite dev server (port 8080) |
| `npm run build` | Production build → `dist/` |
| `npm run build:dev` | Development-mode build |
| `npm run preview` | Serve `dist/` locally |
| `npm run lint` | ESLint |
| `npm run test` | Vitest single run |
| `npm run test:watch` | Vitest watch |
| `npm run cap:sync` | Capacitor sync web assets |
| `npm run cap:android` | Run on Android |
| `npm run cap:ios` | Run on iOS |
| `npm run cap:open:android` | Open Android Studio |
| `npm run cap:open:ios` | Open Xcode |

---

## TypeScript configuration notes

From `tsconfig.json`:
- Path alias: `@/*` → `src/*`
- `strictNullChecks: false`
- `noImplicitAny: false`

---

*See also: [CODEBASE_STRUCTURE.md](CODEBASE_STRUCTURE.md), [DEPLOYMENT_GUIDE.md](../deployment/DEPLOYMENT_GUIDE.md)*
