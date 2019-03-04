FROM node:8-alpine

COPY docker-entrypoint.sh /docker-entrypoint.sh

WORKDIR /usr/src/yapi

COPY . .

RUN apk add --no-cache bash && chmod +x /docker-entrypoint.sh

CMD /docker-entrypoint.sh
