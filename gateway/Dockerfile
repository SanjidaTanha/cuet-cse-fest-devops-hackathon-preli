FROM node:18-alpine
WORKDIR /app
ENV NODE_ENV=production

USER node

COPY package*.json ./
RUN npm ci --omit=dev

COPY src ./src

EXPOSE 5921
CMD ["node", "src/gateway.js"]