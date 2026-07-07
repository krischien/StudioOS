# 🎯 Difficulty Guidelines

> **Defines the standards used to classify phrase difficulty throughout Anu Sabi.**

---

# Purpose

Difficulty classification ensures that players experience a fair and enjoyable challenge regardless of the category they choose.

Difficulty should reflect the effort required to recognize and solve a phrase, not simply its length or obscurity.

These guidelines establish a consistent framework for assigning and reviewing difficulty.

---

# Design Philosophy

Difficulty should be:

- Predictable
- Fair
- Consistent
- Balanced
- Enjoyable

Players should feel challenged, not frustrated.

---

# Current Difficulty Levels

The current game supports three difficulty levels:

- Easy
- Medium
- Hard

Additional levels may be introduced in future releases if required.

---

# Difficulty Factors

Difficulty should be determined using multiple factors rather than a single measurement.

Primary considerations include:

- Phrase familiarity
- Vocabulary complexity
- Cultural recognition
- Number of words
- Similar sounding words
- Gibberish complexity
- Context required
- Recognition speed

No single factor should determine the final difficulty.

---

# Easy

Easy phrases should be immediately recognizable by most players within the target audience.

Typical characteristics:

- Highly familiar
- Common vocabulary
- Frequently encountered
- Short or medium length
- Little ambiguity

Examples:

- Bahay Kubo
- Basketball
- Adobo
- Harry Potter

Easy phrases should build player confidence and encourage continued play.

---

# Medium

Medium phrases should require moderate thought while remaining accessible.

Typical characteristics:

- Moderately familiar
- Slightly longer
- Less common vocabulary
- Requires some recognition effort
- Limited ambiguity

Examples:

- Chocolate Hills
- Jurassic Park
- Manila Ocean Park
- World Health Organization

Medium difficulty represents the standard gameplay experience.

---

# Hard

Hard phrases should challenge experienced players without becoming unfair.

Typical characteristics:

- Less common references
- Longer phrases
- More complex wording
- Greater cultural specificity
- Similar sounding alternatives
- Higher decoding effort

Hard should reward knowledge rather than luck.

---

# What Difficulty Is Not

Difficulty should **not** be based solely on:

- Character count
- Word count
- Long titles
- Rare spelling
- Random capitalization
- Typographical tricks

Artificial complexity should never replace meaningful challenge.

---

# Balancing Factors

When reviewing a phrase, consider the combined impact of:

Recognition

- How widely known is it?

Vocabulary

- Are uncommon words used?

Context

- Does understanding require specialized knowledge?

Pronunciation

- Does the gibberish conversion remain reasonably solvable?

Gameplay

- Can an average player solve it within the available timer?

---

# Category Balance

Each category should maintain an appropriate distribution of difficulty.

Example target distribution:

- Easy: 35%
- Medium: 45%
- Hard: 20%

Exact percentages may change as the content library grows.

---

# Difficulty Review Process

Every new phrase should receive an initial difficulty rating.

The rating may later be adjusted based on:

- Playtesting
- Player feedback
- Analytics
- Solve rates
- Hint usage
- Time-to-solve statistics

Difficulty should evolve with real gameplay data.

---

# Analytics

Future analytics may measure:

- Average solve time
- Hint usage
- Skip frequency
- Incorrect guesses
- Completion rates
- Win percentages

These metrics help validate whether assigned difficulty matches player experience.

---

# AI Compatibility

AI-assisted content generation should estimate an initial difficulty using these guidelines.

Suggested workflow:

```
Generate Phrase

↓

Estimate Difficulty

↓

Assign Metadata

↓

Human Review

↓

Approval
```

Human review remains the authoritative decision.

---

# Rambler Engine Compatibility

The Rambler Engine should classify generated phrases using the same principles.

Procedurally generated content should:

- Estimate familiarity
- Evaluate complexity
- Assign a provisional difficulty
- Support later refinement through analytics

This ensures consistency between generated and manually authored content.

---

# Future Expansion

Future versions may introduce additional systems, including:

- Adaptive difficulty
- Personalized difficulty
- Dynamic difficulty adjustment
- Educational difficulty scales
- Accessibility options

The core principles defined here should remain applicable regardless of future enhancements.

---

# Quality Checklist

Before approving a difficulty assignment, verify:

- Recognition level is appropriate.
- Vocabulary matches the intended audience.
- Challenge comes from understanding rather than confusion.
- Timer expectations remain reasonable.
- Difficulty aligns with similar phrases.

---

# Related Documents

- 02_PHRASE_GUIDELINES.md
- 03_CONTENT_STRUCTURE.md
- 04_CATEGORY_GUIDELINES.md
- 06_EDITORIAL_STANDARDS.md
- 11_RAMBLER_CONTENT.md
- 15_CONTENT_ANALYTICS.md

---

# Revision History

## Version 1.0.0

- Established the official difficulty classification framework.
- Defined Easy, Medium, and Hard standards.
- Documented balancing principles, analytics integration, AI compatibility, and Rambler Engine support.