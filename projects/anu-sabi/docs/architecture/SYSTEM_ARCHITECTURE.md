# System Architecture — Anu-Sabi

> Describes the application architecture **as implemented today**.  
> **Source:** Repository root (`src/`, `android/`, `ios/`)  
> **Last updated:** 2026-07-08

---

## Application overview

Anu-Sabi is a **client-only** single-page application. Players decode phonetic gibberish phrases through a timed guessing game. The app runs in a browser or inside a **Capacitor WebView** on Android/iOS.

There is **no server**, **no API**, **no SQLite**, and **no environment-variable configuration** in the current codebase.

---

## Current architecture diagram

```mermaid
flowchart TB
  subgraph native [Native Shell - Optional]
    Android[Android Gradle Project]
    iOS[iOS Xcode Project]
  end

  subgraph capacitor [Capacitor 7.5]
    WebView[WebView loads dist/]
  end

  subgraph spa [React SPA - Vite Build]
    App[App.tsx]
    Router[react-router-dom]
    Pages[pages/]
    Components[components/]
    Context[GameContext]
    Data[data/ modules]
  end

  subgraph persist [Persistence]
    LS[(localStorage)]
  end

  Android --> WebView
  iOS --> WebView
  WebView --> App
  App --> Router
  Router --> Pages
  Pages --> Components
  Pages --> Context
  Pages --> Data
  Data --> LS
  Context --> LS
```

---

## Frontend architecture

| Layer | Location | Responsibility |
|-------|----------|----------------|
| Entry | `src/main.tsx` | React DOM mount, imports `index.css` |
| App shell | `src/App.tsx` | Providers, route table |
| Pages | `src/pages/` | Screen-level components, local state, navigation |
| Feature components | `src/components/{domain}/` | Reusable UI by feature area |
| UI primitives | `src/components/ui/` | shadcn/Radix components (~45 files) |
| Data / logic | `src/data/` | Persistence, domain functions |
| Shared types | `src/types/game.ts` | Core TypeScript interfaces |
| Hooks | `src/hooks/` | `useTimer`, toast, mobile breakpoint |
| Utils | `src/utils/` | Audio, haptics, hints, labels |
| Styles | `src/styles/` | Premium theme CSS |

**Layout pattern:** No dedicated `layouts/` folder. Each page composes `PremiumTopBar`, `PremiumBottomNav`, and `premium-home` CSS on a `max-w-md` centered column.

---

## Data flow

### Game session flow

```mermaid
sequenceDiagram
  participant User
  participant GameScreen
  participant phrases as phrases.ts
  participant badges as badges.ts
  participant scores as scores.ts
  participant EndScreen
  participant profile as profile.ts
  participant history as gameHistory.ts
  participant LS as localStorage

  User->>GameScreen: Submit answer
  GameScreen->>phrases: validateAnswer()
  phrases-->>GameScreen: boolean
  GameScreen->>badges: checkAndUnlockBadges()
  GameScreen->>EndScreen: navigate(state) on round end
  EndScreen->>profile: addCoins(), applyRoundCompletion()
  EndScreen->>scores: saveBestScore()
  EndScreen->>history: saveGameResult()
  profile->>LS: saveProfile()
  scores->>LS: setItem scores
  history->>LS: setItem history
```

### Settings flow

```mermaid
flowchart LR
  SettingsScreen --> GameContext
  GameContext --> gameSettingsStorage
  gameSettingsStorage --> LS[(sabi-mo-ano-game-settings)]
  GameScreen --> GameContext
  GameScreen --> phrases
```

### Daily Streak flow

```mermaid
flowchart LR
  HomeScreen --> dailyStreak
  DailyStreakScreen --> dailyStreak
  dailyStreak --> profile
  dailyStreak --> badges
  profile --> LS[(sabi-mo-ano-profile)]
```

---

## Component relationships

```mermaid
flowchart TB
  HomeScreen --> DailyChallengeCard
  HomeScreen --> HomeActionGrid
  HomeScreen --> DailyStreakHomeCard
  HomeScreen --> DailyStreakSheet

  GameScreen --> PremiumCircularTimer
  GameScreen --> PhraseSpeechBubble
  GameScreen --> GameAnswerForm
  GameScreen --> HintSkipRow
  GameScreen --> StreakBanner
  GameScreen --> BadgeUnlockPopup

  EndScreen --> EndScoreCard
  EndScreen --> EndStatsRow
  EndScreen --> EndBadgesList
  EndScreen --> StarRating

  CategoriesScreen --> DeckGrid
  DeckGrid --> DeckCard
  DeckGrid --> decks.ts

  ProfileScreen --> ProfileHero
  ProfileScreen --> ProfileStatsGrid
  ProfileScreen --> ProfileActionList
```

**Shared chrome:** `PremiumTopBar` (coins), `PremiumBottomNav` (Home / Play / Medals / Profile) used across most screens.

---

## State management

| State type | Mechanism | Scope |
|------------|-----------|-------|
| Game settings | `GameContext` + `localStorage` | Global (category, mode, difficulty) |
| App settings | `loadSettings()` / `saveSettings()` | Global (sound, haptics) |
| Profile / economy | `loadProfile()` / `saveProfile()` | Global (read on demand, no context) |
| Active game session | `useState` in `GameScreen` | Session (score, streak, phrase index) |
| End screen payload | `react-router` `location.state` | One-time navigation |
| UI overlays | Local `useState` per page | Page-scoped |

**Not used:** Redux, Zustand, MobX. **React Query** is wired (`QueryClientProvider`) but no `useQuery`/`useMutation` calls exist.

---

## Persistence model

**Storage:** Browser `localStorage` only.

| Key | Module | Content |
|-----|--------|---------|
| `sabi-mo-ano-profile` | `profile.ts` | Player profile, coins, streaks, rank |
| `sabi-mo-ano-settings` | `profile.ts` | Sound/haptics toggles |
| `sabi-mo-ano-game-settings` | `gameSettingsStorage.ts` | Category, mode, difficulty |
| `sabi-mo-ano-scores` | `scores.ts` | Best scores per mode+difficulty |
| `sabi-mo-ano-badges` | `badges.ts` | Unlocked badge ID array |
| `sabi-mo-ano-game-history` | `gameHistory.ts` | Last 50 game sessions |

**Static in-memory data:** 500 phrases (`phrases.ts`), 22 badge definitions, 9 deck metadata entries, stub leaderboard players.

**Migrations:** None. New profile fields merge via `{ ...DEFAULT_PROFILE, ...stored }` on load.

---

## Capacitor architecture

```mermaid
flowchart LR
  Vite[Vite build] --> dist[dist/]
  dist --> capSync[cap sync]
  capSync --> androidAssets[android/app/src/main/assets/public/]
  capSync --> iosAssets[ios/App/App/public/]
  androidAssets --> WebViewA[Android WebView]
  iosAssets --> WebViewI[iOS WKWebView]
```

| Config | Value (`capacitor.config.ts`) |
|--------|-------------------------------|
| `appId` | `com.sabimoano.game` |
| `appName` | `Sabi Mo Ano` |
| `webDir` | `dist` |
| Live reload | Commented out (not active) |

**Native entry points:**
- Android: `android/app/src/main/java/com/sabimoano/game/MainActivity.java`
- iOS: `ios/App/App/AppDelegate.swift`

---

## Build architecture

```mermaid
flowchart LR
  TS[TypeScript + TSX] --> Vite[Vite 5 + SWC]
  Tailwind[Tailwind CSS] --> PostCSS --> Vite
  Vite --> dist[dist/index.html + hashed assets]
  dist --> Cap[Capacitor sync]
  Cap --> APK[Android APK via Gradle]
  Cap --> IPA[iOS via Xcode]
```

| Stage | Command | Output |
|-------|---------|--------|
| Dev | `npm run dev` | `localhost:8080` HMR |
| Production | `npm run build` | `dist/` |
| Native sync | `npm run cap:sync` | Copies to `android/`, `ios/` |
| Android run | `npm run cap:android` | Device/emulator |
| iOS run | `npm run cap:ios` | Simulator/device |

---

## Current limitations

| Limitation | Status | Detail |
|------------|--------|--------|
| No backend | Planned — not in repository | No accounts, sync, or real multiplayer |
| No SQLite | Complete (by design) | All persistence is `localStorage` |
| No analytics SDK | Planned — not in repository | Not integrated |
| Leaderboard data | Stub | Hardcoded players in `leaderboard.ts` |
| Static content | Complete (by design) | 500 hand-authored phrases; no procedural generation |
| XP persistence | Partial | Display-only on end screen |
| Strict TypeScript off | Known gap | `strictNullChecks: false` in tsconfig |
| Single-device data | Complete (by design) | Clearing browser storage resets progress |
| No env config | Complete (by design) | No `.env` or `VITE_*` variables |

---

*See also: [CURRENT_IMPLEMENTATION.md](../implementation/CURRENT_IMPLEMENTATION.md), [TECH_STACK.md](../engineering/TECH_STACK.md)*
