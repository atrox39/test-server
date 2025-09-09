FROM node:22-alpine
WORKDIR /usr/src/app

COPY package*.json ./
RUN npm ci --only=production

COPY . .

ENV PORT=80
EXPOSE $PORT

ENV NODE_ENV=production
CMD ["npm", "start"]
