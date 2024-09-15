FROM node:20.11-alpine3.19
ENV NODE_ENV dev
WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD [ "npm", "start" ]