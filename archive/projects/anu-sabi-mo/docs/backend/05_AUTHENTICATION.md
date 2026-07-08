# Authentication

> **Defines the authentication architecture, identity model, account lifecycle, and security strategy for the Anu Sabi backend.**

---

# Purpose

Authentication allows players to securely identify themselves, synchronize progress across devices, participate in online features, and access personalized services.

Authentication should enhance gameplay without becoming a requirement for offline play.

---

# Design Goals

The authentication system should be:

- Offline First
- Secure
- Scalable
- Privacy-conscious
- User-friendly
- Extensible
- Platform independent

Players should never lose access to local gameplay because authentication services are unavailable.

---

# Current Implementation

Current version:

- No authentication
- No user accounts
- No cloud identity
- No login
- No password storage
- No sessions

Every player is currently anonymous and all progress is stored locally.

---

# Target Architecture

```
Player

↓

Authentication API

↓

Identity Service

↓

Session Service

↓

Neon PostgreSQL
```

Authentication becomes the foundation for all connected features.

---

# Identity Model

Every registered player receives a globally unique identifier.

Example:

```
User ID

↓

Profile

↓

Cloud Progress

↓

Achievements

↓

Leaderboard

↓

Analytics
```

The User ID should never change.

---

# Guest Players

Players may use Anu Sabi without creating an account.

Guest players have access to:

- Gameplay
- Local profile
- Local achievements
- Local coins
- Local history
- Local settings

Guest progress remains on the device until an account is linked.

---

# Registered Players

Registered accounts enable:

- Cloud backup
- Cross-device synchronization
- Online leaderboards
- Multiplayer features
- Daily challenges
- Notifications
- Future premium features

Registration should remain optional.

---

# Account Lifecycle

```
Guest Player

↓

Optional Registration

↓

Verified Account

↓

Cloud Synchronization

↓

Connected Services
```

Guest progress should migrate seamlessly into the new account.

---

# Supported Login Methods

Future authentication providers may include:

- Email and password
- Google
- Apple
- Facebook
- Anonymous guest account conversion

Additional providers may be introduced as the platform evolves.

---

# Authentication Flow

```
Player

↓

Login Request

↓

Authentication API

↓

Identity Verification

↓

JWT Issued

↓

Client Session
```

Authenticated sessions enable access to protected backend resources.

---

# Session Management

Authenticated sessions should include:

- Access Token
- Refresh Token
- Expiration Time
- Device Identifier

Sessions should be renewable without requiring frequent logins.

---

# Offline Authentication

Offline gameplay should remain fully available.

```
Player

↓

Previously Authenticated

↓

Local Session

↓

Offline Gameplay

↓

Synchronization Later
```

Temporary connectivity loss should not interrupt active gameplay.

---

# JWT Strategy

Future authentication should use JSON Web Tokens (JWT).

JWTs should contain:

- User ID
- Session ID
- Expiration
- Issued Time
- Permissions

Sensitive information should never be embedded inside tokens.

---

# Refresh Tokens

Long-lived sessions should use refresh tokens.

Benefits include:

- Improved security
- Reduced login frequency
- Better user experience

Refresh tokens should be securely stored.

---

# Account Recovery

Players should be able to recover accounts using verified methods.

Recovery options may include:

- Email verification
- Password reset
- Multi-factor verification

Recovery processes should protect against unauthorized access.

---

# Device Registration

Future versions may register trusted devices.

Stored information may include:

- Device ID
- Platform
- App Version
- Last Active Date

Device management supports security and synchronization.

---

# Permissions

Authentication determines identity.

Authorization determines permissions.

Example roles:

- Guest
- Player
- Premium Player
- Moderator
- Administrator

Role management is documented separately.

---

# Multi-Device Support

One account may synchronize across multiple devices.

```
Phone

↓

Cloud Account

↑

Tablet

↑

Web
```

Synchronization should resolve conflicts through the Sync Engine.

---

# Security Principles

Authentication should include:

- Password hashing
- Secure transport (HTTPS)
- Token expiration
- Refresh token rotation
- Brute-force protection
- Rate limiting
- Audit logging

Security details are documented in the Security package.

---

# Privacy

Authentication should collect only information required for account management.

Personally identifiable information should be minimized.

Players should maintain control over their accounts and personal data.

---

# Future Enhancements

Potential future improvements include:

- Multi-factor authentication (MFA)
- Passkeys (WebAuthn)
- Biometric login
- Single Sign-On (SSO)
- Trusted devices
- Session management dashboard

Enhancements should improve security without compromising usability.

---

# Related Documents

- 03_API_DESIGN.md
- 04_DATABASE_ARCHITECTURE.md
- 06_USER_PROFILES.md
- 07_GAME_SERVICES.md
- 11_SYNC_ENGINE.md
- 13_ADMIN_PORTAL.md
- Security Package

---

# Revision History

## Version 1.0.0

- Defined the authentication architecture.
- Documented guest accounts, registered accounts, session management, JWT strategy, offline authentication, multi-device support, security principles, and future authentication enhancements.