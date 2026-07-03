# Agrivest Crowdfund

Agrivest Crowdfund is a full-stack crowdfunding platform for agricultural projects, built around XRPL-backed escrow flows so farmer campaigns and investor funds stay transparent.

## Highlights

- Create and browse farm funding campaigns
- Invest in campaigns with XRP-style escrow states (`escrowed`, `released`, `returned`)
- Track wallet-level activity (campaigns created, investments made, escrow status)
- Shared OpenAPI contract with generated Zod schemas and React API hooks
- Monorepo workspace with frontend app, API server, database package, and generated client libraries

## Tech Stack

- **Frontend:** React 19, Vite 7, Tailwind CSS 4, TanStack Query, Wouter
- **API:** Express 5, TypeScript, Pino
- **Database:** PostgreSQL, Drizzle ORM, drizzle-zod
- **Tooling:** pnpm workspaces, TypeScript project references, Orval codegen

## Repository Structure

```text
artifacts/
  agrivest/          # Main web app (campaign discovery + funding UI)
  api-server/        # Express API for campaigns, investments, wallet views
  mockup-sandbox/    # UI sandbox artifact
lib/
  api-spec/          # OpenAPI source and Orval config
  api-zod/           # Generated Zod schemas/types from API spec
  api-client-react/  # Generated React Query hooks + custom fetch wrapper
  db/                # Drizzle schema and Postgres connection
scripts/             # Workspace utility scripts
```

## Prerequisites

- Node.js 24+
- pnpm 11+
- PostgreSQL database (for API/runtime data)

## Environment Variables

Required variables used across the workspace:

- `DATABASE_URL` — PostgreSQL connection string (required by `lib/db`)
- `PORT` — required by runtime/build configs in artifacts
- `BASE_PATH` — required by Vite artifacts (`/` is typical for local use)

Optional XRPL variables used by the API XRPL helper:

- `XRPL_SERVER`
- `PLATFORM_WALLET_SEED`

## Getting Started

```bash
pnpm install
pnpm approve-builds --all
```

Then set your environment and run the workspace checks:

```bash
export DATABASE_URL="postgresql://localhost:5432/agrivest"
export PORT=5000
export BASE_PATH=/
pnpm run typecheck
pnpm run build
```

If your Postgres instance requires authentication, use the full form:
`postgresql://<user>:<password>@localhost:5432/agrivest`.

## Common Commands

- `pnpm run typecheck` — full workspace typecheck
- `pnpm run build` — typecheck + build all workspace packages
- `pnpm --filter @workspace/api-server run dev` — run API server
- `pnpm --filter @workspace/agrivest run dev` — run frontend artifact
- `pnpm --filter @workspace/api-spec run codegen` — regenerate API client and schema packages
- `pnpm --filter @workspace/db run push` — push Drizzle schema to the configured database

## API Surface (high level)

The API is mounted under `/api` and includes:

- Campaign lifecycle endpoints (list/create/get/update)
- Campaign stats endpoint
- Investment actions (`invest`, `release`, `cancel`)
- Wallet activity endpoints (campaigns + investments)

OpenAPI source of truth:  
`lib/api-spec/openapi.yaml`
