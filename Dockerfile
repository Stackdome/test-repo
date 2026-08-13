# syntax=docker/dockerfile:1

FROM node:20-alpine

ARG APP_ENV=production
ARG BUILD_TOKEN

WORKDIR /app
COPY . .
RUN yarn install --production

ENV APP_ENV=${APP_ENV}

CMD ["node", "src/index.js"]
EXPOSE 3000
