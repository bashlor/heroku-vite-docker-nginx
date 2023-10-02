FROM node:20 as build-stage
ARG PORT
WORKDIR /usr/src/app

COPY package*.json ./
COPY yarn.lock ./
COPY public ./public/
COPY index.html ./
COPY src ./src/
COPY *.mjs ./
COPY *.ts ./
COPY tsconfig.json ./
COPY tsconfig.node.json ./


RUN yarn install
RUN yarn run build

FROM nginx:1.25.2-alpine

COPY --from=build-stage /usr/src/app/dist/ /var/www/html/
COPY nginx/default.conf /etc/nginx/conf.d/default.conf

CMD sed -i -e 's/$PORT/'"$PORT"'/g' /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'