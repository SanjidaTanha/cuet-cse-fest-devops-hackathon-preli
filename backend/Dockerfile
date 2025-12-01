FROM node:18-alpine AS builder
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
RUN npm run build

FROM node:18-alpine AS runner
WORKDIR /app
ENV NODE_ENV=production


USER node

COPY package*.json ./

RUN npm ci --omit=dev


COPY --from=builder --chown=node:node /app/dist ./dist

EXPOSE 3847
CMD ["node", "dist/index.js"]