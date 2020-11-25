# APP
FROM node:12

RUN mkdir /app/src
WORKDIR /app/src

COPY package*.json ./
RUN npm install
COPY src/ app/src/

ENTRYPOINT ["npm", "run", "start"]
