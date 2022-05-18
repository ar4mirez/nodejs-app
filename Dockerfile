FROM node:18-alpine

WORKDIR /app

COPY package.json .
RUN npm install

COPY . .

USER node
EXPOSE 3000

CMD ["node", "app.js"]
