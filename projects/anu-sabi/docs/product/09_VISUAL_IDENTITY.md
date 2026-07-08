# Visual Identity — Anu-Sabi

> Look, feel, and voice of the product **as implemented today**.  
> **Last updated:** 2026-07-08  
> **Rule:** No invented brand guidelines — only what exists in UI and styles.

---

## Overall visual style

**Premium casual mobile** — bright, friendly, slightly playful. Not minimalist; not hyper-realistic.

| Trait | Manifestation |
|-------|---------------|
| Light & airy | Blue-white gradient background (`#f7fbff` → `#eaf4ff`) |
| Tactile UI | Thick bottom shadows on buttons (`shadow-[0_6px_0_#...]`) |
| Card-based | Rounded-3xl containers, hero gradient Daily Challenge |
| Conversational game area | Speech bubble with tail for phrases |

**Design inspiration (inferred):** Material Design 3 color roles + mobile game "bouncy" buttons — not a documented brand deck.

---

## Color direction

**Material 3 tokens** via Tailwind (`m3-primary`, `m3-secondary-container`, etc.).

| Role | Usage |
|------|-------|
| Primary blue | Brand title, gibberish text, key CTAs |
| Secondary gold | Coins, streak flame accents |
| Tertiary | Category chips, deck accents |
| Semantic green / red | Correct / reveal states |

**TBD —** Formal brand color palette document or logo usage rules.

---

## Typography

| Use | Font |
|-----|------|
| UI & phrases | **Plus Jakarta Sans** |
| Hint clues | Monospace (`font-mono`) for letter underscores |

**Scale:** Expressive large display for gibberish (48px); bold weights throughout.

**Icons:** Google **Material Symbols** (filled variant for emphasis).

---

## Iconography

- Material Symbols for nav, settings, streak, history
- Emoji in badges and some UI (🔥, 🪙, deck emojis)
- Badge emoji set per achievement (🎮, 🔥, 🇵🇭, etc.)

**Tone:** Approachable, not corporate.

---

## Animation philosophy

| Animation | Purpose |
|-----------|---------|
| `premium-enter` | Home content fades up — welcoming |
| `bouncy-btn` active scale | Tactile button press |
| Correct flash | Instant success feedback |
| Confetti (end screen) | Celebrate strong sessions |
| Daily streak CSS | Flame / claim celebrations |
| Progress bar transition | Smooth daily challenge fill |

**Philosophy:** Short, rewarding motion — never block input.

**TBD —** Reduced-motion alternative.

---

## Tone of voice

| Context | Voice |
|---------|-------|
| Home hook | Challenge — *"Can you decode today's gibberish?"* |
| Game helper | Instructional, playful — *"Read it aloud..."* |
| Success | Tagalog pride — *"Tama!"* |
| End screen | Encouraging — *Great Job!*, *New Record!*, *Keep Trying!* |
| Badges | Taglish personality — *Uy May Tama!*, *Perfect Ka, Boss*, *Chill Lang* |
| Stubs | Honest — *"Coming soon"* |
| Premium upsell | Aspirational — *"Unlock SabiMo Premium"* |

**Overall:** Friendly, Filipino-inflected, casual game — not stiff, not childish.

---

## Layout

- **Mobile portrait** centered column (`max-w-md`)
- Safe area padding for bottom nav
- Sticky top bars on secondary screens

**TBD —** Tablet or landscape layouts.

---

## What does not exist yet

| Asset | Status |
|-------|--------|
| Brand style guide PDF | **TBD** |
| Logo usage rules | **TBD** |
| Marketing screenshot templates | **TBD** (`docs/07_MARKETING.md`) |
| Premium exclusive themes | **Planned** — stub only |

---

*Next: [10 — Roadmap narrative](10_ROADMAP_NARRATIVE.md)*
