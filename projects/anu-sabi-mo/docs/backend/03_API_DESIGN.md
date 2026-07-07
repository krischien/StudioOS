# API Design

> **Defines the API architecture, standards, conventions, and communication patterns for all backend services within Anu Sabi.**

---

# Purpose

The API provides a secure, consistent, and scalable communication layer between client applications and backend services.

Every backend capability should be accessible through well-defined APIs rather than direct database access.

---

# Design Goals

The API should be:

- Consistent
- Predictable
- Versioned
- Secure
- Scalable
- Well documented
- Easy to consume
- Backward compatible where practical

API design should remain independent of client implementation.

---

# API Philosophy

The backend follows an **API First** philosophy.

Every feature should expose functionality through documented endpoints before client integration.

Benefits include:

- Easier frontend development
- Better testing
- Reusable services
- Third-party integrations
- Future desktop clients
- AI integrations
- Administrative tooling

---

# Current Implementation

Current version:

- No backend API
- No HTTP endpoints
- No authentication server
- No cloud communication

Client communication occurs entirely through local storage.

---

# Target Architecture

```
React Client

↓

HTTPS

↓

API Gateway

↓

Backend Services

↓

Neon PostgreSQL
```

All client communication should occur through the API Gateway.

---

# API Style

The primary API style should be:

**RESTful APIs**

Reasons:

- Widely understood
- Excellent tooling
- Easy documentation
- Strong ecosystem
- Simple mobile integration

Future technologies such as GraphQL or gRPC may supplement REST where appropriate.

---

# Base URL

Production:

```
https://api.anusabi.com/v1/
```

Development:

```
http://localhost:3000/api/v1/
```

Versioning is included in the URL path.

---

# API Versioning

Version format:

```
/v1/
/v2/
/v3/
```

Breaking changes should introduce a new major API version.

Minor improvements should maintain compatibility.

---

# Resource Naming

Resources should use plural nouns.

Examples:

```
/users
/profiles
/games
/scores
/content
/categories
/leaderboards
/challenges
/analytics
/notifications
```

Consistency improves discoverability.

---

# HTTP Methods

Standard methods should be used consistently.

| Method | Purpose |
|---------|----------|
| GET | Retrieve data |
| POST | Create resources |
| PUT | Replace resources |
| PATCH | Partial updates |
| DELETE | Remove resources |

Operations should remain idempotent whenever applicable.

---

# Request Format

Requests should use JSON.

Example:

```json
{
  "displayName": "PlayerOne",
  "difficulty": "medium"
}
```

UTF-8 encoding should be used throughout.

---

# Response Format

Successful responses should follow a consistent structure.

```json
{
  "success": true,
  "data": {
    ...
  },
  "meta": {
    ...
  }
}
```

A predictable format simplifies client implementation.

---

# Error Format

Errors should also follow a consistent structure.

```json
{
  "success": false,
  "error": {
    "code": "PROFILE_NOT_FOUND",
    "message": "Profile could not be located."
  }
}
```

Avoid exposing internal implementation details.

---

# HTTP Status Codes

Common responses include:

| Code | Meaning |
|------|----------|
| 200 | Success |
| 201 | Created |
| 204 | No Content |
| 400 | Bad Request |
| 401 | Unauthorized |
| 403 | Forbidden |
| 404 | Not Found |
| 409 | Conflict |
| 422 | Validation Error |
| 429 | Too Many Requests |
| 500 | Internal Server Error |

Appropriate status codes improve debugging and interoperability.

---

# Pagination

Large collections should support pagination.

Example:

```
GET /content?page=2&pageSize=100
```

Response metadata:

```json
{
  "meta": {
    "page": 2,
    "pageSize": 100,
    "totalPages": 12,
    "totalItems": 1164
  }
}
```

---

# Filtering

Resources should support optional filters.

Example:

```
GET /content?category=pinoy
```

```
GET /leaderboards?mode=endless
```

```
GET /analytics?from=2026-01-01
```

Filtering should avoid unnecessary endpoints.

---

# Sorting

Sorting should use a common convention.

Example:

```
?sort=score
```

Descending:

```
?sort=-score
```

Multiple sorting criteria may be supported in future versions.

---

# Authentication

Protected endpoints should require authenticated access.

Example:

```
Authorization: Bearer <JWT>
```

Public endpoints should remain accessible without authentication where appropriate.

Authentication details are documented separately.

---

# Rate Limiting

Rate limiting protects backend services.

Example policy:

- Authenticated users
  - 1000 requests/hour

- Anonymous users
  - 100 requests/hour

Limits may vary by endpoint.

---

# Idempotency

Operations that may be retried should support idempotency.

Examples:

- Purchase completion
- Synchronization uploads
- Reward claims

This prevents duplicate processing.

---

# Synchronization Endpoints

Future synchronization endpoints may include:

```
POST /sync/upload

GET /sync/download

POST /sync/conflicts
```

These endpoints coordinate offline-first behavior.

---

# Content Endpoints

Examples:

```
GET /content

GET /categories

GET /packs

GET /daily-challenge
```

Clients should download only updated content whenever possible.

---

# Analytics Endpoints

Examples:

```
POST /analytics/events

POST /analytics/session

GET /analytics/profile
```

Analytics should prioritize aggregated gameplay data.

---

# Administrative APIs

Administrative endpoints should remain isolated.

Example:

```
/admin/users

/admin/content

/admin/reports

/admin/releases
```

Administrative APIs require elevated permissions.

---

# Documentation

Every endpoint should include:

- Purpose
- Request schema
- Response schema
- Authentication requirements
- Error codes
- Rate limits
- Example requests
- Example responses

Comprehensive documentation reduces integration errors.

---

# Future Enhancements

Future API improvements may include:

- GraphQL gateway
- WebSocket support
- Server-Sent Events
- AI inference endpoints
- Bulk synchronization
- Streaming analytics

These enhancements should complement, not replace, the REST API.

---

# Related Documents

- 02_SYSTEM_ARCHITECTURE.md
- 04_DATABASE_ARCHITECTURE.md
- 05_AUTHENTICATION.md
- 07_GAME_SERVICES.md
- 09_CONTENT_SERVICE.md
- 10_ANALYTICS_SERVICE.md
- 11_SYNC_ENGINE.md
- 13_ADMIN_PORTAL.md

---

# Revision History

## Version 1.0.0

- Established the official API design standards.
- Defined REST conventions, versioning, request/response formats, authentication, pagination, filtering, synchronization endpoints, and future API enhancements.