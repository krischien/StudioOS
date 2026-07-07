# SPEC-001 - Backend Architecture

Status: Draft

Version: 1.0

---

# Purpose

Define the structure and responsibilities of the backend application.

---

# Goals

The backend should be:

- Stateless
- Modular
- Scalable
- Secure
- Testable
- Observable
- API-first

---

# Technology Stack

Runtime

- Node.js

Framework

- Fastify

Language

- TypeScript

ORM

- Prisma

Database

- PostgreSQL

Cache

- Redis

Realtime

- Socket.IO

Authentication

- JWT
- OAuth

Storage

- Cloudflare R2

---

# Backend Modules

Authentication

Responsible for:

- Login
- Registration
- Refresh Tokens
- OAuth

---

Users

Responsible for:

- Profiles
- Statistics
- Friends
- Preferences

---

Game Engine

Responsible for:

- Rambler Engine
- Prompt Selection
- Round Validation
- Score Calculation

---

Matchmaking

Responsible for:

- Match Creation
- Match Joining
- Room Assignment
- Queue Management

---

Gameplay

Responsible for:

- Turn Handling
- Voting
- Winner Calculation
- Match Results

---

Economy

Responsible for:

- Coins
- XP
- Rewards
- Daily Bonuses
- Purchases

---

Content

Responsible for:

- Prompt Packs
- Categories
- Localization

---

Moderation

Responsible for:

- Reports
- Content Filtering
- Abuse Detection

---

Notifications

Responsible for:

- Push Notifications
- Emails
- Announcements

---

Analytics

Responsible for:

- Gameplay Metrics
- Retention
- Economy Statistics

---

# Service Communication

Frontend

↓

REST API

↓

Business Services

↓

Database

↓

Redis

↓

Storage

---

# Error Handling

Every endpoint returns a consistent response format.

Success

{
    success: true,
    data: {}
}

Failure

{
    success: false,
    error: {
        code,
        message
    }
}

---

# Logging

The backend should log:

- API Requests
- Errors
- Security Events
- Match Events
- Purchases

---

# Security

- JWT Validation
- Rate Limiting
- Input Validation
- CORS
- SQL Injection Protection
- XSS Protection

---

# Scalability

The backend should support horizontal scaling.

Application servers remain stateless.

Shared state should exist only in PostgreSQL or Redis.

---

# Future Enhancements

- Microservices
- Event Bus
- AI Services
- Tournament Servers
- Replay Service