# Research Notes — Anu-Sabi

> **Status:** Planned — research only (not in repository)  
> **Last updated:** 2026-07-08

---

## Purpose of this document

This file captures **ideas and research directions** for Anu-Sabi. Nothing here describes running code unless explicitly noted. For what exists today, see [CURRENT_IMPLEMENTATION.md](../implementation/CURRENT_IMPLEMENTATION.md).

---

## Rambler Engine concept

**Status:** Planned — research only (not in repository)

The Rambler Engine is a conceptual **phonetic ambiguity puzzle generation engine** documented in `docs/04_RAMBLER_ENGINE.md` at the repository root. No `rambler-engine/` package, no engine source files, and no imports from the game reference this engine.

### Intended purpose (from draft spec)

Generate gibberish phrases procedurally from real sentences instead of relying solely on a static authored database.

### Draft pipeline (from `docs/04_RAMBLER_ENGINE.md`)

```
Sentence → Tokenizer → Language Detection → Syllable Splitter
  → Phoneme Extraction → Candidate Search → Sequence Optimization
  → Difficulty Scoring → Recoverability Scoring → Puzzle
```

### Draft module map (Planned — not in repository)

| Module | Responsibility |
|--------|----------------|
| `RamblerEngine` | TBD |
| `PuzzleGenerator` | TBD |
| `CandidateSearcher` | TBD |
| `SequenceOptimizer` | TBD |
| `DifficultyScorer` | TBD |
| `RecoverabilityScorer` | TBD |

### Planned package location

`rambler-engine/` — **TBD — not in repository**

### Integration hook in current game

Today's game uses `getPhrases()` in `src/data/phrases.ts` to return shuffled static phrases. A future engine could replace or augment this function without changing the UI layer — **Planned — not in repository**.

---

## Procedural puzzle generation

**Status:** Planned — research only

### Current approach (implemented)

- 500 hand-authored `{ gibberish, answer, category }` pairs in `src/data/phrases.ts`
- Categories: Pinoy (250), World (250)
- Shuffle at runtime; endless mode reshuffles when pool exhausted

### Research questions (open)

| # | Question | Status |
|---|----------|--------|
| 1 | Can phonetic ambiguity be scored automatically for "fun" difficulty? | Open |
| 2 | What recoverability threshold keeps puzzles solvable when read aloud? | Open |
| 3 | How to support Filipino + English mixed phrases? | Open |
| 4 | Seeded randomness for reproducible daily puzzles? | Open |

### Experiments log

**TBD — not in repository.** No experiments recorded.

---

## Future AI / content generation ideas

**Status:** Planned — research only

These ideas appear in parking-lot and research docs. They are **not** part of the current app.

| Idea | Status |
|------|--------|
| LLM-assisted phrase authoring | Planned — research only |
| Player solve data for difficulty tuning | Planned — not in repository |
| Dynamic daily puzzle from seed | Planned — research only |
| User-generated puzzles | Planned — not in repository |

### Research platform data model (draft, from `docs/08_RESEARCH.md`)

```json
{
  "original": "TBD",
  "generated": "TBD",
  "timeToSolve": 0,
  "attempts": 0,
  "hintUsed": false,
  "correct": true,
  "difficulty": "TBD",
  "seed": 0
}
```

**No telemetry collection exists in the current codebase.**

---

## Ethics and privacy

**TBD — requires confirmation.** No privacy policy or data collection implementation exists in the repository.

---

## Relationship to StudioOS `extracted/`

The `projects/anu-sabi/extracted/` folder is reserved for future standalone packages (e.g. Rambler Engine). It is **empty** today.

---

*See also: [ROADMAP.md](../roadmap/ROADMAP.md) (FUTURE section), [ADR_INDEX.md](../decisions/ADR_INDEX.md)*
