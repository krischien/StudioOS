# Anu Sabi

# UI / UX Design Specification

**Document Version:** 3.0
**Status:** Living Document
**Project:** Anu Sabi
**Owner:** Kristian
**Last Updated:** February 2026

---

# 1. Purpose

This document defines the complete User Interface (UI) and User Experience (UX) standards for Anu Sabi.

It serves as the single source of truth for designers, developers, artists, QA testers, and AI development tools.

Every screen, interaction, animation, and navigation flow should follow this specification.

---

# 2. UX Goals
 
The player should feel:

* Excited within the first 10 seconds
* Comfortable after one match
* Confident navigating every screen
* Encouraged to play "just one more game"

The interface should never distract from the conversations happening between players.

---

# 3. Design Philosophy

Our UI should feel like:

* A modern party game
* Friendly
* Bright
* Playful
* Fast
* Lightweight
* Clean

Avoid:

* Corporate styling
* Excessive gradients
* Busy layouts
* Tiny buttons
* Walls of text

---

# 4. Design Principles

## Simplicity

Every screen should have one obvious primary action.

---

## Consistency

Buttons should always behave the same.

Colors should always mean the same thing.

Animations should always have a purpose.

---

## Social First

The UI should encourage interaction between players.

The interface should never become the focus.

Players are the focus.

---

## Fast

Everything should feel responsive.

Target:

* Screen transitions under 300ms
* Button response under 100ms

---

## Delight

Small animations should reward interaction without slowing gameplay.

---

# 5. Design System

## Color Palette

### Primary

* Warm Yellow
* Orange
* Coral

### Secondary

* Sky Blue
* Mint Green
* Purple

### Neutral

* White
* Light Gray
* Medium Gray
* Dark Gray

### Semantic

Success

Warning

Information

Danger

---

# Typography

Hierarchy

Display

Heading 1

Heading 2

Heading 3

Body

Caption

Numbers should remain highly readable for timers and scores.

---

# Border Radius

Buttons

16px

Cards

20px

Dialogs

24px

Avatars

Circular

---

# Shadows

Soft

Large blur

Minimal opacity

Never harsh.

---

# Spacing System

8px Grid

Base spacing

8

16

24

32

48

64

Margins should always follow this system.

---

# Icons

Rounded

Filled

Easy to recognize

Consistent stroke weight

---

# Illustrations

Colorful

Expressive

Inclusive

High contrast

Simple silhouettes

---

# 6. Information Architecture

```
Launch

↓

Splash

↓

Home

↓

Game Mode

↓

Lobby

↓

Match

↓

Voting

↓

Round Results

↓

Next Round

↓

Final Results

↓

Home
```

---

# 7. User Flows

## First-Time User

```
Launch

↓

Welcome

↓

Nickname

↓

Tutorial

↓

Home

↓

Quick Match
```

---

## Returning Player

```
Launch

↓

Daily Reward

↓

Home

↓

Continue

↓

Match
```

---

## Private Room

```
Home

↓

Create Room

↓

Invite Friends

↓

Configure Match

↓

Start
```

---

# 8. Screen Specifications

---

## Splash Screen

Purpose

Brand recognition.

Display

* Logo
* Animated background
* Loading indicator

Maximum duration

3 seconds

---

## Welcome Screen

Purpose

Introduce new players.

Actions

* Start
* Language
* Accessibility

---

## Home Screen

Purpose

Primary hub.

Primary CTA

Play Now

Secondary Actions

* Profile
* Leaderboard
* Content Packs
* Daily Reward
* Settings

Displayed Information

* Avatar
* Username
* Level
* XP
* Coins
* Notifications

ASCII Layout

```
+--------------------------------+

☰                Coins      🔔

        ANU SABI

      PLAY NOW

-------------------------------

Daily Reward

Content Packs

Leaderboard

Profile

Settings

+--------------------------------+
```

---

## Game Mode Screen

Modes

Classic

Quick Play

Custom Room

Future

Ranked

Tournament

Story

Events

---

## Lobby

Display

Players

Ready status

Chat (optional)

Room code

Host controls

Start button

---

## Match Screen

Priority

The prompt must dominate the screen.

Display

Round Number

Timer

Prompt

Input Box

Submit Button

Player Count

ASCII Layout

```
+--------------------------------+

Round 3 / 10

25 Seconds

--------------------------------

PROMPT

"If your dog became president..."

--------------------------------

____________________

____________________

____________________

--------------------------------

Submit

+--------------------------------+
```

---

## Voting Screen

Display

Anonymous answers

Timer

Vote button

Reaction button

---

## Round Results

Display

Winner

Points

Funny moments

Awards

Next Round button

---

## Final Results

Display

Champion

Final Rankings

Statistics

Best Answer

Rematch

Return Home

---

## Profile

Display

Avatar

Statistics

Achievements

History

Customization

---

## Content Packs

Display

Pack Cards

Preview

Purchase

Owned

Locked

---

## Leaderboards

Filters

Global

Friends

Weekly

Monthly

All Time

---

## Settings

Audio

Notifications

Accessibility

Language

Credits

Privacy

---

# 9. Navigation Rules

Every major screen must allow returning Home within two taps.

Back navigation should always be predictable.

Never trap players inside menus.

---

# 10. Component Library

Buttons

* Primary
* Secondary
* Success
* Warning
* Danger
* Ghost
* Icon

Cards

* Prompt Card
* Player Card
* Reward Card
* Achievement Card
* Content Pack Card
* Statistic Card

Inputs

* Text Field
* Search
* Room Code
* Chat Box

Indicators

* Progress Bar
* Countdown
* XP Bar
* Streak Meter

Feedback

* Toast
* Snackbar
* Dialog
* Confirmation Modal

Navigation

* Bottom Navigation
* Header
* Drawer
* Tabs

---

# 11. Motion Design

Animations should feel:

Fast

Responsive

Fun

Natural

Recommended duration

150ms to 300ms

Celebrations

500ms to 800ms

Avoid unnecessary animations.

---

# 12. Microinteractions

Button Tap

Small scale animation

Vote Submitted

Pop animation

Confetti burst

Countdown

Subtle pulse below five seconds

Unlock

Card flips

Coins animate into wallet

Achievement

Banner slides from top

Room Created

Room code copies with confirmation

---

# 13. Audio Feedback

Button

Soft click

Vote

Pop

Countdown

Tick

Winner

Celebration

Achievement

Fanfare

Mute mode should disable all effects.

---

# 14. Haptic Feedback

Supported devices should provide light vibration for:

Vote

Achievement

Round Win

Daily Reward

Room Joined

Never overuse vibration.

---

# 15. Empty States

Examples

No Friends Online

No Match History

No Content Packs

No Achievements

Every empty state should suggest the next action.

---

# 16. Error States

Messages should be friendly.

Example

"Looks like we lost the connection. We're trying again."

Never blame the player.

---

# 17. Loading States

Use

Skeleton loading

Animated mascot (future)

Progress indicators

Avoid blank screens.

---

# 18. Accessibility

Support

Large text

Reduced motion

High contrast

Colorblind-friendly indicators

Screen reader compatibility

Large touch targets

---

# 19. Responsive Guidelines

Primary Platform

Mobile Portrait

Secondary

Tablet

Future

Desktop

Landscape should remain functional but is not the primary design target.

---

# 20. Future UI Roadmap

Planned improvements

* Dark Mode
* Seasonal Themes
* Animated Avatars
* Emoji Reactions
* Voice Reactions
* Streamer Mode
* Spectator Mode
* Custom Themes

---

# 21. Success Metrics

The UI succeeds when:

* Players learn without tutorials.
* Navigation feels effortless.
* Matches start quickly.
* Menus never interrupt the fun.
* Players choose to immediately play another round.

---

# 22. Related Documents

* 01_VISION.md
* 02_GAMEPLAY.md
* 03_GAME_LOOP.md
* 05_ECONOMY.md
* 09_RAMBLER_ENGINE.md
* 10_TECHNICAL_ARCHITECTURE.md

---

# Revision History

## Version 3.0

* Reorganized into a professional design specification.
* Added design system.
* Added user flows.
* Added screen specifications.
* Added reusable component library.
* Added motion design guidelines.
* Added accessibility standards.
* Added responsive rules.
* Added ASCII wireframes.
* Established this document as the official UI/UX reference for Anu Sabi.
