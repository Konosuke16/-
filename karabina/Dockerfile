FROM node:18-alpine

ENV TZ Asia/Tokyo

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm install

COPY . .

ENV HOST 0.0.0.0
EXPOSE 3000

RUN npm run build

CMD ["npm", "start"]
