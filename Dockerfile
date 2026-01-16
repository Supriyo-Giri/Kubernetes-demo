FROM node:20-alpine AS base

COPY package.json package-lock.json* ./
RUN npm ci --omit=dev

COPY . .

USER node
EXPOSE 5000
ENV NODE_ENV=production
CMD ["npm","start"]