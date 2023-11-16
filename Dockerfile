# syntax=docker/dockerfile:1

FROM node:18-alpine
WORKDIR /usr/app
COPY package.json package-lock.json ./
RUN npm install
COPY . .
RUN npm run build
CMD [ "npm", "start" ]
EXPOSE 3000
