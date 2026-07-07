# 🔒 Security

> **Defines the security principles, current safeguards, and future security strategy for Anu Sabi.**

---

# Purpose

This document establishes the security standards for Anu Sabi throughout its lifecycle.

Its goals are to:

- Protect user data
- Preserve game integrity
- Reduce attack surfaces
- Support secure future online features
- Encourage secure development practices

Security should be considered during design, implementation, testing, and deployment.

---

# Security Philosophy

Anu Sabi follows a **security-by-design** approach.

Core principles:

- Least privilege
- Defense in depth
- Secure defaults
- Input validation
- Data integrity
- Privacy by default

Security decisions should balance protection, usability, and performance.

---

# Current Security Model

Current architecture:

```
React
↓

Vite

↓

Capacitor

↓

localStorage
```

The application currently:

- Runs entirely on the client
- Requires no login
- Uses no backend
- Makes no API requests
- Stores data locally

This significantly reduces exposure to many common web attacks.

---

# Current Risks

Because data is stored locally:

- Progress can be modified by advanced users
- localStorage contents can be edited
- Scores are not tamper resistant
- Coins can theoretically be manipulated

This is acceptable during the offline-first phase.

Future online leaderboards and competitive features will require server-side validation.

---

# Data Protection

Current stored information includes:

- Player profile
- Settings
- Badges
- Scores
- Daily streak
- Game history

Sensitive personal information is **not currently stored**.

Future cloud synchronization should store only the minimum data required.

---

# Authentication (Future)

Future account systems may support:

- Email/password
- Google Sign-In
- Apple Sign-In
- Anonymous guest accounts

Authentication should use trusted identity providers where possible.

Passwords should never be stored or processed directly by the client.

---

# Authorization (Future)

Future online services should enforce:

- Role-based access control
- Server-side permission validation
- Ownership checks
- Administrative privileges

Authorization decisions must never rely solely on client-side logic.

---

# Input Validation

All user input should be validated.

Examples include:

- Display names
- Search fields
- Settings
- Future chat messages
- Future multiplayer interactions

Validation should occur on both the client and the server once online services are introduced.

---

# Storage Security

## Current

Storage uses:

```
localStorage
```

Data should always be:

- Validated before use
- Parsed safely
- Checked for corruption
- Merged with default values

---

## Future SQLite

When SQLite is introduced:

- Validate all database operations
- Use parameterized queries where applicable
- Protect migration processes
- Preserve transactional integrity

---

## Future Neon

Cloud storage should:

- Encrypt data in transit using HTTPS/TLS
- Enforce authentication
- Validate permissions
- Restrict direct database access
- Log important security events

The client should never communicate directly with the database using privileged credentials.

---

# Secure Networking

Future API communication should:

- Use HTTPS exclusively
- Validate server certificates
- Apply reasonable request timeouts
- Retry transient failures safely
- Avoid exposing sensitive information in URLs

---

# Secrets Management

The application should never hardcode:

- API keys
- Database credentials
- Service tokens
- Private certificates

Environment variables and secure secret management should be used for deployment.

---

# Logging

Logs should never include:

- Authentication tokens
- Passwords
- Personal information
- Database credentials
- Private API keys

Production logs should contain only information necessary for diagnostics.

---

# Third-Party Dependencies

Dependencies should:

- Be actively maintained
- Receive regular updates
- Be reviewed for known vulnerabilities
- Be removed if no longer required

Security advisories should be monitored regularly.

---

# Mobile Security

Capacitor applications should:

- Request only necessary permissions
- Minimize native plugin usage
- Keep native dependencies updated
- Respect platform security guidelines

Future biometric authentication should use official platform APIs.

---

# Multiplayer Security (Future)

Future multiplayer systems should:

- Validate all actions on the server
- Prevent score manipulation
- Detect abnormal behavior
- Rate-limit requests
- Protect against replay attacks where appropriate

Competitive results should never rely solely on client-side calculations.

---

# Cloud Synchronization (Future)

Synchronization should:

- Authenticate every request
- Detect conflicting updates
- Preserve local progress
- Retry failed operations safely

Offline play should always remain available.

---

# Privacy

The application should collect only the information required to deliver its features.

Future analytics should:

- Respect user consent where required
- Avoid collecting unnecessary personal data
- Provide transparent privacy documentation

---

# Security Reviews

Security should be reviewed:

- Before major releases
- Before adding new online services
- Before introducing authentication
- After significant dependency updates

---

# Incident Response (Future)

If a security issue is discovered:

1. Assess impact.
2. Contain the issue.
3. Develop a fix.
4. Test thoroughly.
5. Release an update.
6. Communicate with affected users when appropriate.

---

# Security Checklist

Before shipping new functionality:

- Inputs validated
- Sensitive data protected
- Secrets excluded from source code
- Dependencies reviewed
- Error messages sanitized
- Logs checked for sensitive information
- Documentation updated

---

# Related Documents

- ERROR_HANDLING.md
- TESTING_STRATEGY.md
- BUILD_DEPLOYMENT.md
- FUTURE_ARCHITECTURE.md

---

# Revision History

## Version 1.0.0

- Established the security philosophy for Anu Sabi.
- Documented the current offline-first security model.
- Defined future security requirements for SQLite, Neon, authentication, multiplayer, and cloud synchronization.