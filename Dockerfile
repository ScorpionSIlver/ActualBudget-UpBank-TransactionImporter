FROM node:24.18-slim

WORKDIR /app

COPY BankAPICollect/package*.json ./
COPY BankAPICollect/src .

RUN npm install

COPY . .

CMD ["node", "update.js"]
