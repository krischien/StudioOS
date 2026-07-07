# Rambler Engine Specification

**Project:** Anu Sabi Mo  
**Document Type:** Core System Specification  
**Status:** Design Specification  
**Version:** 1.0  
**Last Updated:** 2026-07-07

---

# 1. Overview

The Rambler Engine is the procedural storytelling and conversation generation system powering the dynamic experience of Anu Sabi Mo.

Its purpose is to transform static content components into unique, replayable, emotionally engaging interactions.

Instead of relying on fixed question sets or scripted conversations, Rambler Engine dynamically assembles experiences using modular elements such as:

- Themes
- Topics
- Characters
- Emotions
- Perspectives
- Constraints
- Twists
- Difficulty levels
- Social interaction rules

The engine acts as the creative layer of the game, ensuring that each session feels fresh while maintaining consistency with the game's design philosophy.

---

# 2. Design Philosophy

The Rambler Engine follows three core principles:

## 2.1 Structured Randomness

Random generation alone creates chaos.

Rambler Engine uses controlled randomness:

- Random enough to create surprise
- Structured enough to remain meaningful
- Balanced enough to maintain player engagement

The goal is not infinite randomness.

The goal is infinite possibilities inside a designed playground.

---

## 2.2 Human Connection Over Competition

Anu Sabi Mo focuses on conversations, creativity, reactions, and storytelling.

Rambler Engine prioritizes:

- Interesting answers
- Emotional moments
- Funny situations
- Unexpected perspectives
- Memorable interactions

The engine should create moments players want to talk about after the game.

---

## 2.3 Replayability Through Combination

Replayability is achieved through combinations of modular components.

Example: 

Theme: Childhood Memories

Emotion: Nostalgia

Constraint: Answer using only three words

Twist: Other players guess the story

Result:

A completely different gameplay experience from a normal question.

The Rambler Engine creates replay value by combining different content dimensions rather than relying only on a large collection of static questions.

---

# 3. Rambler Engine Architecture

The engine consists of several layers:

                Rambler Engine

                     |
                     v

          Experience Generator

                     |
    --------------------------------
    |              |               |

Content       Rule Engine     Balance System
Library

    |
    v
 Themes / Prompts / Twists / Roles   
    |
    v

 Generated Round

    |
    v

 Player Interaction

    |
    v

 Feedback + Learning Data


 
---

# 4. Core Components

## 4.1 Content Library

The Content Library contains reusable game components.

Components include:

### Themes

Examples:

- Friendship
- Childhood
- Dreams
- Embarrassing Moments
- Future Goals
- Family
- Adventure

---

### Prompts

Questions or situations presented to players.

Examples:

- "Tell a story about a moment you wish you could relive."
- "Describe your dream world."

---

### Emotions

Emotional direction applied to content.

Examples:

- Funny
- Serious
- Heartwarming
- Weird
- Competitive
- Mysterious

---

### Twists

Modifiers that change how players interact.

Examples:

- Answer backwards
- Explain using a metaphor
- Other players vote
- Tell the story from another person's perspective

---

### Constraints

Rules that create creative pressure.

Examples:

- 10 second answer
- One sentence only
- No repeating words
- Draw instead of speaking

---

## 4.2 Generation Rules

The Generation Rules determine how components are combined.

The engine evaluates:

- Compatibility between components
- Difficulty balance
- Player count
- Game mode
- Previous rounds
- Content freshness

Example:

Valid combination:

Theme:
Friendship

Emotion:
Funny

Constraint:
30 second story

Twist:
Players vote on the funniest answer


Invalid combination:


Theme:
Deep Personal Loss

Emotion:
Funny

Constraint:
Speed Round


The engine prevents combinations that create poor player experiences.

---

## 4.3 Experience Generator

The Experience Generator is responsible for creating the final gameplay interaction.

It combines:

- Content
- Rules
- Player context
- Modifiers

into a playable round.

Output example:


Round Type:
Story Challenge

Prompt:
Share a childhood memory that still makes you laugh.

Modifier:
You have 20 seconds.

Player Interaction:
Everyone votes for the funniest story.


---

## 4.4 Balance System

The Balance System ensures generated rounds remain enjoyable.

It monitors:

- Difficulty
- Emotional intensity
- Repetition
- Player engagement

The goal is to avoid:

- Too many difficult rounds
- Too many serious moments
- Too many similar experiences

---

# 5. Generation Pipeline

When creating a new round, Rambler Engine follows this process:

## Step 1: Determine Game Context

Inputs:

- Game mode
- Number of players
- Age group
- Difficulty
- Session duration

---

## Step 2: Select Experience Direction

The engine selects:

- Theme
- Emotion
- Interaction style

Example:

Theme:
Friendship

Emotion:
Funny

Style:
Storytelling


---

## Step 3: Apply Modifiers

The engine adds:

- Constraints
- Twists
- Challenges

Example:

Tell a funny friendship story.

Constraint:
Only use five sentences.

Twist:
Players guess if it is real or fictional.


---

## Step 4: Validate Generated Round

The system checks:

- Is it appropriate?
- Is it understandable?
- Is it repetitive?
- Is it balanced?
- Does it match the selected mode?

---

## Step 5: Deliver Experience

The generated round is presented to players.