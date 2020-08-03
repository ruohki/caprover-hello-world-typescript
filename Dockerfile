FROM node:alpine as builder
COPY . .
RUN npm install
RUN npm run build:app

FROM node:alpine

COPY --from=builder dist/ .
COPY . .

RUN npm install --production

CMD ["node", "dist/main.js"]