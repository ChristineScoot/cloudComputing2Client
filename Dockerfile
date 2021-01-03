FROM node:12-alpine

WORKDIR /client

COPY package*.json ./
RUN npm install --only-production
COPY ./src ./src
COPY ./public ./public

EXPOSE ${PORT}
CMD ["npm", "start"]