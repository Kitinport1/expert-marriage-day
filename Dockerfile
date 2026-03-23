FROM node:18-alpine

WORKDIR /app

COPY expert-marriage-day/package*.json ./

RUN npm install

COPY expert-marriage-day/ .

EXPOSE 3000

CMD ["npm", "start"]
