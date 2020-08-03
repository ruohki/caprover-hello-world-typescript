FROM node:alpine as builder
COPY . .
RUN npm install
RUN npm run build:app

FROM node:alpine

COPY --from=builder dist/* dist/
COPY package.json .
COPY package-lock.json .
RUN npm install --production

CMD ["node", "dist/main.js"]