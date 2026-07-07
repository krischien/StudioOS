# 🪙 Coin System

> **Defines the virtual currency system used for progression, purchases, rewards, and long-term player engagement in Anu Sabi.**

---

# Purpose

The Coin System serves as the primary in-game currency.

Coins reward player participation while providing meaningful choices throughout the game.

The system should encourage continued play without becoming a requirement for success.

---

# Design Philosophy

Coins should represent **progress**, not **power**.

Players should never feel forced to spend coins to enjoy the game.

Instead, coins should reward dedication and offer optional conveniences and cosmetic rewards.

The economy should remain:

- Fair
- Predictable
- Balanced
- Transparent

---

# Current Implementation

Status

✅ Implemented

Coins are currently used for:

- Purchasing hints

Players begin with a default coin balance when a new profile is created.

Current implementation:

- Starting Coins: **500**

---

# Earning Coins

Players earn coins by actively playing the game.

Current sources include:

- Completing games
- Session rewards

Future versions may expand earning opportunities.

---

# Future Coin Sources

Coins may eventually be earned from:

- Daily login rewards
- Daily Challenges
- Weekly Challenges
- Badge unlocks
- Rank promotions
- Achievement milestones
- Event participation
- Seasonal rewards
- Community events
- Multiplayer rewards
- Tournament placement
- Referral bonuses

Every earning source should encourage gameplay rather than repetitive grinding.

---

# Spending Coins

Current spending options:

| Feature | Status |
|----------|--------|
| Hint Purchase | ✅ Implemented |

Future spending options may include:

- Cosmetic themes
- Avatar customization
- Profile decorations
- Premium phrase packs
- Seasonal content
- Sound packs
- Animation effects
- Celebration effects
- Name customization
- Collection items

Coins should primarily purchase optional content rather than gameplay advantages.

---

# Economy Flow

```
Play Game

↓

Earn Coins

↓

Save Coins

↓

Spend Coins

↓

Continue Playing
```

This loop reinforces long-term engagement without requiring purchases.

---

# Coin Storage

Coins are stored as part of the player's profile.

The balance should always:

- Persist between sessions
- Be recoverable
- Never become negative

Future online synchronization should maintain the same principles.

---

# Economy Balance

The economy should satisfy several goals:

- New players can purchase hints.
- Experienced players have meaningful long-term goals.
- Coins remain valuable throughout progression.
- Inflation is avoided.

Players should always have something worthwhile to save for.

---

# Coin Inflation

Future balancing should monitor:

- Average coins earned
- Average coins spent
- Player savings
- Purchase frequency

If players accumulate excessive unused coins, new optional sinks should be introduced instead of increasing prices across the board.

---

# Premium Considerations

Coins are **not** intended to become a pay-to-win mechanic.

Premium players may receive:

- Cosmetic bonuses
- Convenience features
- Additional customization

Premium purchases should never provide an unfair gameplay advantage.

---

# Offline Support

The Coin System should function completely offline.

Players should be able to:

- Earn coins
- Spend coins
- Save balances

without requiring an internet connection.

When online synchronization is introduced, conflict resolution should preserve player progress.

---

# Future Economy Features

Potential future additions include:

- Coin gifts
- Trading (limited)
- Seasonal currencies
- Event-exclusive currencies
- Treasure chests
- Lucky rewards
- Daily shops
- Rotating stores
- Mystery boxes
- Collectible cosmetics

Additional currencies should only be introduced when they serve a clear gameplay purpose.

---

# Security

Current implementation relies on local storage.

Future online versions should include:

- Server-side validation
- Secure synchronization
- Fraud detection
- Backup and recovery

The integrity of the in-game economy should be maintained across all platforms.

---

# Design Goals

The Coin System should remain:

- Rewarding
- Fair
- Optional
- Easy to understand
- Expandable
- Offline-first

Coins should motivate continued play while preserving the game's focus on skill and enjoyment.

---

# Related Documents

- HINT_SYSTEM.md
- XP_SYSTEM.md
- BADGE_SYSTEM.md
- RANK_SYSTEM.md
- PROGRESSION.md
- BALANCING.md

---

# Revision History

## Version 1.0.0

- Documented the Coin System as the primary in-game currency.
- Defined current earning and spending mechanics.
- Established principles for future economy expansion, premium integration, and long-term balance.