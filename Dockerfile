FROM node:alpine

COPY . .

RUN npm install --production

CMD ["node", "dist/main.js"]