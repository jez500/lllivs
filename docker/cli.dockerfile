FROM uselagoon/php-8.1-cli:latest

ENV COMPOSER_MEMORY_LIMIT=-1
ENV COMPOSER_VERSION=2.1.14
ENV WEBROOT=public

COPY . /app

RUN echo "Building App" \
    # Copy build env vars.
    && rm -rf /app/.env && cp /app/.env.lagoon /app/.env \
    # Remove build log.
    && rm -rf /app/storage/logs/*.log \
    # Add storage link
    && ln -sfn /app/storage/app/public /app/public/storage \
    # Remove caches.
    && rm -fr /app/bootstrap/cache \
    && mkdir -p /app/bootstrap/cache \
    && chmod +w -R /app/bootstrap/cache \
    # Remove built js.
    && rm -f /app/public/js/* \
    # Remove built css.
    && rm -f /app/public/js/* \
    # Install composer dependencies.
    && composer install --no-dev \
    # Build frontend.
    && npm install && npm run prod \
    # Remove node_modules as only required for build (and its huge)
    && rm -rf /app/node_modules
