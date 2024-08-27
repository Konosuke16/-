FROM node:18-alpine

ENV TZ Asia/Tokyo

RUN npm install -g pnpm

WORKDIR /app

COPY package.json pnpm-lock.yaml ./

RUN pnpm install

COPY . .

ENV HOST 0.0.0.0
EXPOSE 3000

RUN pnpm build

CMD ["pnpm", "start"]