ARG NODE_VERSION=24

# ─── base: Node + pnpm ────────────────────────────────────────────────────────
FROM node:${NODE_VERSION}-slim AS base
RUN corepack enable

# ─── deps: install all workspace dependencies ─────────────────────────────────
FROM base AS deps
WORKDIR /app

COPY package.json pnpm-workspace.yaml pnpm-lock.yaml .npmrc ./
COPY tsconfig*.json ./
COPY lib/ lib/
COPY artifacts/ artifacts/
COPY scripts/ scripts/

RUN pnpm install --frozen-lockfile

# ─── build-api: compile the Express API server ────────────────────────────────
FROM deps AS build-api
RUN pnpm --filter @workspace/api-server run build

# ─── build-frontend: compile the React/Vite frontend ─────────────────────────
FROM deps AS build-frontend
RUN PORT=3000 BASE_PATH=/ pnpm --filter @workspace/agrivest run build

# ─── api: minimal runtime image for the API server ───────────────────────────
FROM node:${NODE_VERSION}-slim AS api
WORKDIR /app
COPY --from=build-api /app/artifacts/api-server/dist ./dist
ENV NODE_ENV=production
ENV PORT=8080
EXPOSE 8080
CMD ["node", "--enable-source-maps", "./dist/index.mjs"]

# ─── frontend: nginx serving static files + API proxy ────────────────────────
FROM nginx:stable-alpine AS frontend
COPY --from=build-frontend /app/artifacts/agrivest/dist/public /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
