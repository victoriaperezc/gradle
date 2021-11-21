FROM node:10-alpine

RUN mkdir /app
COPY COPY package*.json /app
WORKDIR /app
RUN npm install express
EXPOSE 8080

CMD ["node", "index.js"]
