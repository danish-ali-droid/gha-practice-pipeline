FROM node:20-alpine

COPY package*.json ./
WORKDIR  /app
RUN npm install
COPY . .
RUN  RUN npm ci --omit=dev
CMD [ "node","src /index.html" ]