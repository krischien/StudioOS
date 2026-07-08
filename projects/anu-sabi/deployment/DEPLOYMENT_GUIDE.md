# Deployment Guide — Anu-Sabi

> Build and release procedures based on the current repository configuration.  
> **Last updated:** 2026-07-08  
> **Application source:** Repository root (not `projects/anu-sabi/`)

---

## Prerequisites

| Requirement | Version / notes |
|-------------|-----------------|
| Node.js | TBD — requires confirmation (not pinned in repo) |
| npm | Used via `package-lock.json` |
| Android Studio | For Android builds |
| Xcode + CocoaPods | For iOS builds (macOS only) |
| JDK | Required by Android Gradle — TBD — requires confirmation |

---

## npm scripts

From repository root (`d:\sabi-mo-ano-game` or equivalent):

| Command | Purpose |
|---------|---------|
| `npm install` | Install dependencies |
| `npm run dev` | Vite dev server on port **8080** (`vite.config.ts`) |
| `npm run build` | Production web build → `dist/` |
| `npm run build:dev` | Development-mode build |
| `npm run preview` | Preview production build locally |
| `npm run lint` | ESLint |
| `npm run test` | Vitest (single run) |
| `npm run test:watch` | Vitest watch mode |
| `npm run cap:sync` | `cap sync` — copy `dist/` to native projects |
| `npm run cap:android` | `cap run android` |
| `npm run cap:ios` | `cap run ios` |
| `npm run cap:open:android` | Open Android Studio |
| `npm run cap:open:ios` | Open Xcode |

---

## Web build

```bash
npm install
npm run build
```

**Output:** `dist/` (configured as Capacitor `webDir`)

**Preview locally:**

```bash
npm run preview
```

**Hosting:** TBD — requires confirmation. No CI/CD or hosting config exists in the repository.

---

## Capacitor configuration

From `capacitor.config.ts`:

| Setting | Value |
|---------|-------|
| `appId` | `com.sabimoano.game` |
| `appName` | `Sabi Mo Ano` |
| `webDir` | `dist` |

### Sync workflow

After every web build that should ship to native:

```bash
npm run build
npm run cap:sync
```

This copies the latest `dist/` assets into `android/` and `ios/` projects.

### Live reload (development)

`capacitor.config.ts` has a commented `server` block for device testing:

```typescript
// url: 'http://192.168.1.x:8080',
// cleartext: true,
```

Vite dev server runs on port **8080**. Uncomment and set your machine's LAN IP, then run `npm run dev` and `cap run android` / `cap run ios`.

---

## Android build

### Project location

`android/` — Capacitor-generated Android project

### Key configuration

| Setting | Value | Source |
|---------|-------|--------|
| `applicationId` | `com.sabimoano.game` | `android/app/build.gradle` |
| `namespace` | `com.sabimoano.game` | `android/app/build.gradle` |
| `versionCode` | `1` | `android/app/build.gradle` |
| `versionName` | `"1.0"` | `android/app/build.gradle` |
| `minSdkVersion` | `23` | `android/variables.gradle` |
| `compileSdkVersion` | `35` | `android/variables.gradle` |
| `targetSdkVersion` | `35` | `android/variables.gradle` |

### Standard workflow

```bash
npm run build
npm run cap:sync
npm run cap:open:android
```

In Android Studio: build and run on emulator or device.

### Release APK/AAB

**TBD — requires confirmation.** No signing configuration or release pipeline is documented in the repository. Typical steps (not verified in this repo):

1. Configure signing in Android Studio or `android/app/build.gradle`
2. Build → Generate Signed Bundle / APK
3. Test on physical device before store submission

### Gradle wrapper

```bash
cd android
./gradlew assembleDebug    # Unix
gradlew.bat assembleDebug  # Windows
```

---

## iOS build

### Project location

`ios/App/` — Capacitor-generated iOS project

### Prerequisites

- macOS
- Xcode
- CocoaPods

### Standard workflow

```bash
npm run build
npm run cap:sync
cd ios/App && pod install
npm run cap:open:ios
```

Build and run from Xcode on simulator or device.

### App Store release

**TBD — requires confirmation.** No App Store Connect configuration exists in the repository.

---

## Release process (recommended)

No formal release process is defined in the repository. Suggested checklist:

### 1. Pre-release verification

```bash
npm run build
npm run test
npm run lint
```

Manual smoke test — see [QA_STRATEGY.md](../testing/QA_STRATEGY.md).

### 2. Version bump

- Android: `versionCode` / `versionName` in `android/app/build.gradle`
- iOS: Version and build number in Xcode — **TBD — requires confirmation**

### 3. Build and sync

```bash
npm run build
npm run cap:sync
```

### 4. Native release builds

- Android: Signed AAB for Play Store
- iOS: Archive in Xcode for App Store

### 5. Post-release

- Analytics monitoring — **Planned — not in repository**
- Crash reporting — **Planned — not in repository**

---

## Environment variables

**Not used.** The application has no `.env` files or runtime environment configuration in the current codebase. All data is client-side `localStorage`.

---

## CI/CD

**Planned — not in repository.** No GitHub Actions, GitLab CI, or similar deployment automation was found.

---

## Troubleshooting

| Issue | Suggestion |
|-------|------------|
| Stale native assets | Run `npm run build && npm run cap:sync` |
| White screen on device | Verify `dist/index.html` exists after build |
| Capacitor plugin errors | Re-sync after dependency changes |
| iOS pod errors | `cd ios/App && pod install --repo-update` |

---

*See also: [QA_STRATEGY.md](../testing/QA_STRATEGY.md), [TECH_STACK.md](../engineering/TECH_STACK.md)*
