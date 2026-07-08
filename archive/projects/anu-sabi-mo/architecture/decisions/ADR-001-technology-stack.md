# ADR-001: Technology Stack

**Status:** Accepted

**Date:** February 2026

---

# Context

Anu Sabi requires a modern, scalable, and maintainable architecture capable of supporting:

- Multiplayer gameplay
- Realtime communication
- AI-assisted features
- Progressive Web App capabilities
- Cross-platform deployment
- Long-term maintainability

The technology stack should maximize developer productivity while remaining suitable for production-scale applications.

---

# Decision

The project will use the following technology stack.

## Frontend

- React
- TypeScript
- Vite
- Tailwind CSS
- React Router
- TanStack Query
- Zustand

---

## Backend

- Node.js
- Fastify
- Prisma ORM
- PostgreSQL
- Redis

---

## Realtime

- Socket.IO

---

## Authentication

- JWT
- OAuth Providers

---

## File Storage

- Cloudflare R2

---

## Deployment

Frontend

- Vercel

Backend

- Railway or Fly.io

---

## Testing

- Vitest
- Playwright

---

# Rationale

React provides a mature component ecosystem.

TypeScript improves reliability and developer productivity.

Tailwind CSS enables rapid UI development while maintaining consistency.

Fastify offers excellent performance with a clean plugin architecture.

PostgreSQL provides a robust relational database suitable for structured game data.

Prisma offers type-safe database access and simplifies migrations.

Redis improves performance through caching and supports realtime features.

Socket.IO enables low-latency multiplayer communication.

---

# Consequences

Benefits

- Modern stack
- Large community
- Excellent tooling
- High scalability
- Strong TypeScript integration

Trade-offs

- Requires backend development experience.
- More infrastructure than no-code platforms.
- Greater initial setup complexity.

---

# Future Revisions

Potential future evaluations include:

- React Native
- Next.js
- tRPC
- Colyseus
- Kubernetes