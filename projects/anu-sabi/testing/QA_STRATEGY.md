# QA Strategy — Anu-Sabi

> Current testing setup and manual QA guidance.  
> **Last updated:** 2026-07-08

---

## Current testing setup

| Tool | Config | Status |
|------|--------|--------|
| Vitest | `vitest.config.ts` | Configured |
| jsdom | Vitest environment | Configured |
| @testing-library/react | Installed | Not used in tests |
| @testing-library/jest-dom | `src/test/setup.ts` | Configured |

### Existing tests

| File | Content | Status |
|------|---------|--------|
| `src/test/example.test.ts` | `expect(true).toBe(true)` | Stub |
| `android/.../ExampleUnitTest.java` | Capacitor default | Not app-specific |
| `android/.../ExampleInstrumentedTest.java` | Capacitor default | Not app-specific |

**Conclusion:** No meaningful automated test coverage for game logic exists today.

### Recommended automated tests (not yet written)

*TBD — not in repository. When added, prioritize:*

- `validateAnswer()` normalization edge cases
- `getMultiplier()` threshold boundaries
- `checkAndUnlockBadges()` condition logic
- `saveBestScore()` only updates on improvement
- `dailyStreak.ts` cycle and break detection

---

## Manual testing checklist

### Smoke test — core loop

| # | Step | Expected |
|---|------|----------|
| 1 | Launch app → Home | Home loads, Daily Challenge + Streak cards visible |
| 2 | Tap Play | Game screen loads with gibberish phrase |
| 3 | Submit correct answer | Green flash, points added, next phrase |
| 4 | Submit wrong answer | Wiggle, input clears, timer continues |
| 5 | Let timer expire | Answer revealed, streak resets, next phrase |
| 6 | Complete 10-round session | End screen with score, coins, stars |
| 7 | Tap Play Again | New game starts |

### Settings

| # | Step | Expected |
|---|------|----------|
| 1 | Change difficulty to Hard | Timer shows 15s in game |
| 2 | Change mode to Endless | Game continues past 10 phrases |
| 3 | Toggle sound off | No audio on correct answer |
| 4 | Toggle haptics off | No vibration on correct answer |
| 5 | Reload app | Settings persisted |

### Daily Streak

| # | Step | Expected |
|---|------|----------|
| 1 | Open Daily Streak sheet from Home | 5-day reward cards visible |
| 2 | Claim today's reward | Coins/tokens updated, claim button disabled |
| 3 | Open `/daily-streak` full page | Same state as sheet |

### Profile & history

| # | Step | Expected |
|---|------|----------|
| 1 | Edit display name on Profile | Name saved after save |
| 2 | Complete a game | Session appears in Game History |
| 3 | Unlock a badge | Badge visible on Achievements screen |

### Categories

| # | Step | Expected |
|---|------|----------|
| 1 | Select Pinoy deck + Start Game | Pinoy phrases in game |
| 2 | Tap locked deck (e.g. Funny) | Coming soon screen |

### Leaderboard

| # | Step | Expected |
|---|------|----------|
| 1 | Open Leaderboard | Podium + list with stub players |
| 2 | Search for "Maria" | Filters to matching stub entry |
| 3 | Friends tab | Empty state shown |

### Stub screens

| # | Step | Expected |
|---|------|----------|
| 1 | Profile → Friends | Coming soon message |
| 2 | Settings → Upgrade Premium | Coming soon message |

---

## Device testing

### Current device matrix

**TBD — requires confirmation.** No formal device matrix is documented in the repository.

### Recommended minimum manual coverage

| Platform | Priority | Notes |
|----------|----------|-------|
| Android phone (portrait) | P0 | Primary target via Capacitor |
| Android emulator | P1 | Via `npm run cap:android` |
| Mobile browser (Chrome) | P1 | `npm run dev` for quick iteration |
| iOS simulator | P2 | Requires macOS |
| Desktop browser | P2 | Dev only; not primary UX |

### Capacitor-specific checks

| # | Check |
|---|-------|
| 1 | `npm run build && npm run cap:sync` completes without error |
| 2 | App launches in Android WebView |
| 3 | `localStorage` persists between app restarts |
| 4 | Haptics work on physical device |
| 5 | Safe area / bottom nav not clipped |

---

## Release checklist

### Pre-build

- [ ] `npm run build` passes
- [ ] `npm run lint` passes (if enforced)
- [ ] `npm run test` passes (Stub test only today)
- [ ] Manual smoke test on target device

### Web build

- [ ] `dist/` generated
- [ ] No console errors on load

### Capacitor sync

- [ ] `npm run cap:sync` copies latest `dist/`
- [ ] `capacitor.config.json` assets match in native projects

### Android release

- [ ] Version code / name updated in `android/app/build.gradle` — **TBD — requires confirmation**
- [ ] Signing config in place — **TBD — requires confirmation** (do not store secrets in docs)
- [ ] Release APK/AAB tested on device
- [ ] Play Store listing assets — **TBD — not in repository**

### iOS release

- [ ] `pod install` in `ios/App/` — requires macOS
- [ ] Archive and test on device/simulator
- [ ] App Store listing — **TBD — not in repository**

### Post-release

- [ ] Analytics monitoring — **Planned — not in repository**
- [ ] Crash reporting — **Planned — not in repository**

---

*See also: [DEPLOYMENT_GUIDE.md](../deployment/DEPLOYMENT_GUIDE.md)*
