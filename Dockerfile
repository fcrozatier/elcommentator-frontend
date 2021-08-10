FROM node:16-alpine AS builder

WORKDIR /app

COPY . .

RUN npm install && npm run build

EXPOSE 5000


FROM nginx:1.21.1-alpine

COPY ./nginx.conf /etc/nginx/conf.d

COPY --from=builder /app/dist/ /usr/share/nginx/html
