# Architecture

## Purpose

This directory contains the complete technical architecture of the Anu Sabi project.

The goal is to document **how the system is designed**, independent of implementation details.

Architecture documentation serves as the source of truth for developers, designers, AI assistants, QA engineers, and future contributors.

---

## Architecture Sections

### Frontend

React application architecture.

Location:

architecture/frontend/

---

### Backend

Node.js backend architecture.

Location:

architecture/backend/

---

### API

REST API design, contracts, authentication, and versioning.

Location:

architecture/api/

---

### Database

Logical data model and database architecture.

Location:

architecture/database/

---

### Multiplayer

Realtime communication architecture.

Location:

architecture/multiplayer/

---

### AI

AI-assisted systems and future integrations.

Location:

architecture/ai/

---

### Security

Authentication, authorization, encryption, and security best practices.

Location:

architecture/security/

---

### Deployment

Infrastructure, CI/CD, hosting, monitoring, and scaling.

Location:

architecture/deployment/

---

## Design Principles

Every architectural decision should prioritize:

- Simplicity
- Scalability
- Maintainability
- Performance
- Security
- Testability
- Developer Experience
- AI-Assisted Development

---

## Technology Stack

### Frontend

- React
- TypeScript
- Vite
- Tailwind CSS
- React Router
- TanStack Query
- Zustand

### Backend

- Node.js
- Fastify (preferred) or Express
- Prisma ORM
- PostgreSQL
- Redis

### Authentication

- JWT
- OAuth

### Storage

- Cloudflare R2
- S3 Compatible Storage

### Realtime

- Socket.IO

### Testing

- Vitest
- Playwright

### CI/CD

- GitHub Actions
- Docker

---

## Philosophy

Architecture should evolve through documented decisions rather than assumptions.

Every significant technical choice should be recorded so future contributors understand both the decision and the reasoning behind it.