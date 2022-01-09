ARG CLI_IMAGE
FROM ${CLI_IMAGE} as cli

FROM uselagoon/nginx:latest

ENV WEBROOT=public

# Laravel compatable nginx conf.
COPY docker/nginx/conf/app.conf /etc/nginx/conf.d/app.conf

COPY --from=cli /app /app
