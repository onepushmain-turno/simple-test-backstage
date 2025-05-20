FROM node:alpine AS build
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .

FROM node:alpine
WORKDIR /app
COPY --from=build /app /app
RUN apk add dumb-init

EXPOSE 80
USER node
CMD ["dumb-init", "node", "app.js"]