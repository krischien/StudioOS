# Accessibility — Anu-Sabi

> Current accessibility posture and planned improvements.  
> **Last updated:** 2026-07-08

---

## Current state (honest)

Accessibility has **not** been formally audited. `NEXT_STEPS.md` lists accessibility as a lower-priority item. This document records **what exists today** and marks gaps as **TBD**.

---

## Readable typography

| Aspect | Current |
|--------|---------|
| Primary font | **Plus Jakarta Sans** (`premium-home.css`) |
| Game phrase size | Large — `text-[48px]` for gibberish |
| Body / labels | `text-base` to `text-sm` with bold weights for emphasis |
| Contrast | Material 3 token palette on light gradient background |

**Goal (inferred):** High legibility for phrase text — the core content.

**TBD —** Formal minimum contrast audit (WCAG AA).

---

## Simple controls

| Pattern | Current |
|---------|---------|
| Primary input | Single text field per phrase |
| Actions | Large rounded buttons (Play, Hint, Skip) |
| Navigation | Bottom nav with 4 tabs |
| Settings | Toggle switches for sound/haptics |

**Goal:** Low motor complexity — one main action per moment.

**Gap:** No documented keyboard-only flow for desktop. **TBD.**

---

## Color usage

| State | Visual |
|-------|--------|
| Correct | Green flash / green text |
| Reveal / timeout | Red-tinted bubble |
| Default play | Primary blue gibberish text |
| Categories | Color-coded deck cards |

**Risk:** Success/error conveyed partly by color — **TBD** whether non-color cues are sufficient for color-blind users (icons/text partially help).

---

## Touch targets

| Element | Approach |
|---------|----------|
| Play button | Full-width, `py-6` — large |
| Grid buttons | `p-6` rounded cards |
| Bottom nav | Fixed bar with icons + labels |
| Active feedback | `active:scale-95` press shrink |

**Goal:** Thumb-friendly mobile targets.

**TBD —** Measured minimum 44×44pt compliance audit.

---

## Screen reader / ARIA

| Item | Status |
|------|--------|
| Back button on Coming Soon | `aria-label="Go back"` |
| Broader ARIA labels | **TBD — not implemented** (`NEXT_STEPS.md`) |
| Live regions for timer | **TBD** |

---

## Sound and haptics alternatives

Sound and haptics can be **disabled in Settings** — visual feedback remains (flash, wiggle, text).

**Goal:** Don't rely solely on audio/haptics for critical feedback.

---

## Cognitive accessibility

| Support | Notes |
|---------|-------|
| Forgiving wrong answers | Retry without losing round |
| Hint system | Reduces frustration |
| Skip | Escape hatch |
| Timer pressure | May challenge some users — difficulty toggle helps (Easy = 45s) |

**TBD —** Option to disable timer — not implemented.

---

## Planned improvements

From project backlog and gaps:

- [ ] ARIA labels on main game actions — **Planned**
- [ ] Keyboard navigation — **TBD**
- [ ] Color-blind safe palette review — **TBD**
- [ ] Reduced motion preference — **TBD** (animations exist: confetti, premium-enter)
- [ ] Formal WCAG audit — **TBD**

---

*Next: [09 — Visual identity](09_VISUAL_IDENTITY.md)*
