# Anu Sabi

# Rambler Engine Specification

**Document Version:** 3.0
**Status:** Living Document
**Project:** Anu Sabi
**Owner:** Kristian
**Last Updated:** February 2026

---

# 1. Purpose

The Rambler Engine is the core procedural conversation engine that powers Anu Sabi.

Rather than selecting a fixed prompt from a list, the engine dynamically constructs each round using modular content elements.

Its objective is to maximize replayability, creativity, humor, and social interaction while minimizing repetitive gameplay.

The Rambler Engine is the defining innovation of Anu Sabi.

---

# 2. Vision

Every match should feel like a conversation that has never happened before.

Players should experience unexpected combinations that create laughter, storytelling, and memorable moments.

The engine should make Anu Sabi feel effectively limitless.

---

# 3. Design Philosophy

The Rambler Engine values:

* Creativity over correctness.
* Emergent gameplay over scripted gameplay.
* Variety over repetition.
* Social interaction over individual performance.
* Player imagination over predetermined outcomes.

---

# 4. Core Principles

The engine should:

* Generate unique rounds.
* Minimize repeated prompts.
* Mix compatible content intelligently.
* Support future expansion.
* Scale without redesigning the core system.

---

# 5. Engine Architecture

```text
                Content Packs
                      │
        ┌─────────────┼─────────────┐
        │             │             │
    Prompt Pool   Theme Pool   Modifier Pool
        │             │             │
        └─────────────┼─────────────┘
                      │
                Rambler Engine
                      │
      ┌───────────────┼────────────────┐
      │               │                │
   Role Engine   Twist Engine   Emotion Engine
      │               │                │
      └───────────────┼────────────────┘
                      │
             Final Round Generation
                      │
                 Player Experience
```

---

# 6. Modular Conversation Model

Every round is assembled from interchangeable modules.

Possible structure:

```text
Prompt
    +
Theme
    +
Role
    +
Emotion
    +
Constraint
    +
Wildcard
    +
Twist
=
Unique Round
```

Not every module is required for every round.

The engine determines the optimal combination.

---

# 7. Prompt Types

Supported prompt styles include:

* Finish the sentence
* Explain why
* Story continuation
* Debate
* Caption
* Would You Rather
* Most Likely To
* Roleplay
* Scenario
* Challenge

Future prompt types can be added without changing engine logic.

---

# 8. Themes

Themes define the setting.

Examples:

* School
* Office
* Family
* Barangay
* Horror
* Fantasy
* Science Fiction
* Romance
* Holiday
* Sports

Themes are independent of prompts.

---

# 9. Roles

Roles temporarily change perspective.

Examples:

* Principal
* Barangay Captain
* Alien
* Dog
* Superhero
* Grandma
* News Reporter
* Taxi Driver
* Teacher
* Ghost

Roles dramatically increase variety.

---

# 10. Emotions

Responses may require a specific emotional tone.

Examples:

* Angry
* Excited
* Embarrassed
* Proud
* Dramatic
* Jealous
* Confused
* Sarcastic
* Romantic
* Panicked

---

# 11. Constraints

Constraints make responses more creative.

Examples:

* One sentence only
* Five words maximum
* Must rhyme
* Use only emojis
* No letter "A"
* Speak like a pirate
* Speak as a child
* Use song lyrics
* Begin every sentence with "Actually..."

---

# 12. Twists

Twists change expectations.

Examples:

* Mid-round role swap
* Secret objective
* Double points
* Reverse voting
* Anonymous round
* Team round
* Everyone answers together
* Lightning round

Twists keep matches unpredictable.

---

# 13. Wildcards

Wildcards introduce chaos.

Examples:

* Random accent
* Time pressure
* Story continuation
* Hidden role
* Fake answer
* Audience vote
* Bonus challenge

Wildcards should be used sparingly.

---

# 14. Round Generation Process

```text
Select Theme
      ↓
Select Prompt
      ↓
Assign Role (Optional)
      ↓
Assign Emotion (Optional)
      ↓
Assign Constraint (Optional)
      ↓
Assign Twist (Optional)
      ↓
Validate Combination
      ↓
Deliver Round
```

---

# 15. Compatibility Rules

Not every combination is valid.

The engine should prevent:

* Contradictory constraints.
* Duplicate mechanics.
* Impossible prompts.
* Excessive difficulty.

Compatibility rules improve quality while preserving variety.

---

# 16. Variety Management

The engine tracks recent gameplay to reduce repetition.

It should avoid:

* Repeating the same prompt.
* Repeating the same role.
* Repeating the same theme.
* Repeating identical combinations.

Variety is a key replayability driver.

---

# 17. Difficulty Scaling

Difficulty is based on creativity rather than skill.

Factors include:

* Number of active modifiers.
* Constraint complexity.
* Prompt ambiguity.
* Time limit.

Players should gradually encounter more complex combinations.

---

# 18. AI Integration (Future)

Artificial intelligence may assist by:

* Generating new prompts.
* Detecting duplicate content.
* Suggesting themes.
* Balancing difficulty.
* Identifying inappropriate submissions.
* Creating event-specific content.

AI assists content creation but does not replace curated design.

---

# 19. Data Model

Each content element should include metadata.

Example:

```json
{
  "id": "prompt_001",
  "type": "prompt",
  "theme": ["family", "school"],
  "difficulty": "easy",
  "tags": ["funny", "story"],
  "language": "en",
  "age_rating": "general"
}
```

This structure enables intelligent filtering and expansion.

---

# 20. Decision Rationale

### Why modular generation?

Modular generation creates exponentially more combinations than fixed prompt lists, increasing replayability while reducing content creation effort.

### Why separate themes, roles, and constraints?

Separating these elements allows the engine to recombine existing content into fresh experiences without rewriting prompts.

### Why validate combinations?

Randomness alone does not guarantee fun. Validation ensures generated rounds remain coherent and enjoyable.

---

# 21. Future Evolution

Potential enhancements include:

* Adaptive difficulty based on player history.
* Community-generated modules.
* Machine learning for prompt recommendations.
* Personalized content rotation.
* Dynamic event modifiers.
* Cross-pack procedural generation.
* AI-generated seasonal content.

---

# 22. Success Metrics

The Rambler Engine succeeds when:

* Players rarely encounter repeated rounds.
* Matches consistently produce memorable conversations.
* Content Packs remain valuable over time.
* New modules integrate without major code changes.
* Replayability increases with each expansion.

---

# 23. Related Documents

* 02_GAMEPLAY.md
* 03_GAME_LOOP.md
* 05_ECONOMY.md
* 07_CONTENT_PACKS.md
* 10_TECHNICAL_ARCHITECTURE.md

---

# Revision History

## Version 3.0

* Defined the Rambler Engine as the core procedural conversation system.
* Introduced modular round generation.
* Documented themes, roles, emotions, constraints, twists, and wildcards.
* Added compatibility rules and replayability strategies.
* Established a future-ready architecture for AI-assisted content creation.
