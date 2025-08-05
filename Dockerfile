FROM node:20.19.4-slim

WORKDIR /app

COPY BankAPICollect/package*.json ./
COPY BankAPICollect/src .

RUN npm install

COPY . .

CMD ["node", "update.js"]
