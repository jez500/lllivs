ARG CLI_IMAGE
FROM ${CLI_IMAGE} as cli

FROM uselagoon/php-8.0-cli:latest

COPY --from=cli /app /app
ENV PHP_MEMORY_LIMIT=400M
ENV PAGER=less

CMD ["/app/scripts/worker/work.sh"]
