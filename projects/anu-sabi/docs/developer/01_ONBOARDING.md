# 01 — Onboarding

> Get the app running locally and understand the repository layout.  
> **Last updated:** 2026-07-08

---

## Prerequisites

| Tool | Notes |
|------|-------|
| Node.js + npm | TBD — requires confirmation (not pinned in repo; use current LTS) |
| Git | Clone repository |
| Android Studio | For Capacitor Android builds |
| Xcode + CocoaPods | iOS only; macOS required |

---

## Repository layout

```
<repo-root>/
├── src/                 # React application (all game logic)
├── android/             # Capacitor Android project
├── ios/                 # Capacitor iOS project
├── public/              # Static assets
├── docs/                # Documentation (you are here)
├── projects/anu-sabi/   # StudioOS documentation mirror
├── capacitor.config.ts
├── vite.config.ts
├── package.json
└── dist/                # Production build output (generated)
```

**Application source is at repo root** — not inside `projects/anu-sabi/`.

---

## Install and run (web)

```bash
npm install
npm run dev
```

- Dev server: **http://localhost:8080** (`vite.config.ts`)
- HMR enabled; host `::` (all interfaces)

---

## npm scripts

| Command | Purpose |
|---------|---------|
| `npm run dev` | Vite dev server |
| `npm run build` | Production build → `dist/` |
| `npm run build:dev` | Development-mode build |
| `npm run preview` | Preview production build |
| `npm run lint` | ESLint |
| `npm run test` | Vitest (single run) |
| `npm run test:watch` | Vitest watch |
| `npm run cap:sync` | Copy `dist/` to native projects |
| `npm run cap:android` | Run on Android device/emulator |
| `npm run cap:ios` | Run on iOS simulator/device |
| `npm run cap:open:android` | Open Android Studio |
| `npm run cap:open:ios` | Open Xcode |

---

## Capacitor workflow

```bash
npm run build
npm run cap:sync
npm run cap:open:android   # or cap:open:ios
```

**Config** (`capacitor.config.ts`):

| Key | Value |
|-----|-------|
| `appId` | `com.sabimoano.game` |
| `appName` | `Sabi Mo Ano` |
| `webDir` | `dist` |

### Live reload on device

Uncomment `server.url` in `capacitor.config.ts` with your LAN IP and port 8080, then run `npm run dev` alongside `cap run android`.

---

## Android quick reference

| Setting | Value |
|---------|-------|
| `applicationId` | `com.sabimoano.game` |
| `versionCode` / `versionName` | `1` / `"1.0"` |
| `minSdkVersion` | 23 |
| `targetSdkVersion` | 35 |

```bash
cd android && gradlew.bat assembleDebug   # Windows
```

---

## iOS quick reference

```bash
npm run build && npm run cap:sync
cd ios/App && pod install
npm run cap:open:ios
```

---

## First-day checklist for new developers

- [ ] `npm install && npm run dev` — home screen loads
- [ ] Play one 10-round game end-to-end
- [ ] Open DevTools → Application → localStorage — see `sabi-mo-ano-*` keys
- [ ] Read [04 — Game rules](./04_GAME_RULES.md) before changing scoring
- [ ] Read [07 — Feature status](./07_FEATURE_STATUS.md) before implementing "missing" social/premium features

---

## Environment variables

**None.** No `.env` files. All configuration is in source or Capacitor config.

---

*Next: [02 — Architecture](./02_ARCHITECTURE.md)*
