FROM node:18-alpine

ENV TZ Asia/Tokyo

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm install

COPY . .

# Cloud Runが期待するポートに合わせる
ENV PORT 8080
ENV HOST 0.0.0.0
EXPOSE 8080

RUN npm run build

CMD ["npm", "start"]
