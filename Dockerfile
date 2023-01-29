
FROM node:16-alpine

WORKDIR /app


COPY node_modules ./node_modules
COPY package-lock.json ./
COPY package.json ./
RUN npm install
COPY pages ./pages
COPY public ./public
COPY styles ./styles
COPY .next /.next




CMD ["npm", "run", "dev"]
EXPOSE 3000