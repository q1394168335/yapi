#!/usr/bin/env bash
PORT=$PORT
ADMIN_ACCOUNT=$ADMIN_ACCOUNT
DB_HOST=$DB_HOST
DB_PORT=$DB_PORT
DB_NAME=$DB_NAME
DB_USER=$DB_USER
DB_PASS=$DB_PASS

MAIL_ENABLE=$MAIL_ENABLE
MAIL_HOST=$MAIL_HOST
MAIL_PORT=$MAIL_PORT
MAIL_FROM=$MAIL_FROM
MAIL_AUTH_USER=$MAIL_AUTH_USER
MAIL_AUTH_PASS=$MAIL_AUTH_PASS

echo {\"port\": \"${PORT:-3000}\",\"adminAccount\": \"${ADMIN_ACCOUNT:-admin@admin.com}\",\"db\": {\"servername\": \"${DB_HOST:-127.0.0.1}\",\"DATABASE\": \"${DB_NAME:-yapi}\",\"port\": \"${DB_PORT:-27017}\",\"user\": \"${DB_USER:-}\",\"pass\": \"${DB_PASS:-}\"},\"mail\": {\"enable\": ${MAIL_ENABLE:-false},\"host\": \"${MAIL_HOST:-smtp.163.com}\",\"port\": \"${MAIL_PORT:-465}\",\"from\": \"${MAIL_FROM:-***@163.com}\",\"auth\": {\"user\": \"${MAIL_AUTH_USER:-***@163.com}\",\"pass\": \"${MAIL_AUTH_USER:-****}\"}}} > config.json

exec node vendors/server/app.js