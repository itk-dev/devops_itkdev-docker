# Drupal project template

This is the current generic template for Drupal projects.

Specific version templates are created by symlinking to this folder, e.g.

```text
templates/drupal-11
├── .docker -> ../drupal/.docker
├── .twig-cs-fixer.dist.php -> ../../config/drupal/twig/.twig-cs-fixer.dist.php
├── docker-compose.dev.yml -> ../drupal/docker-compose.dev.yml
├── docker-compose.redirect.yml -> ../drupal/docker-compose.redirect.yml
├── docker-compose.server.yml -> ../drupal/docker-compose.server.yml
└── docker-compose.yml -> ../drupal/docker-compose.yml
```

> [!NOTE]
> GitHub workflow files and code check config files are handled in another symlink show.

## Nginx configuration

The `nginx` service uses the official
[`nginxinc/nginx-unprivileged`](https://hub.docker.com/r/nginxinc/nginx-unprivileged) image, which renders the config
templates in [`.docker/templates`](.docker/templates) with `envsubst` on container start (see [“Using environment
variables in nginx configuration” in the nginx image documentation](https://hub.docker.com/_/nginx)).

Only variables actually referenced in [`default.conf.template`](.docker/templates/default.conf.template) are
substituted – any other `NGINX_*` environment variable is silently ignored. The supported variables are:

| Variable                     | Nginx directive                                                                                            | Description                                     |
| ---------------------------- | ---------------------------------------------------------------------------------------------------------- | ----------------------------------------------- |
| `NGINX_PORT`                 | [`listen`](https://nginx.org/en/docs/http/ngx_http_core_module.html#listen)                                | Port nginx listens on                           |
| `NGINX_WEB_ROOT`             | [`root`](https://nginx.org/en/docs/http/ngx_http_core_module.html#root)                                    | Document root                                   |
| `NGINX_MAX_BODY_SIZE`        | [`client_max_body_size`](https://nginx.org/en/docs/http/ngx_http_core_module.html#client_max_body_size)    | Maximum request (upload) size                   |
| `NGINX_FPM_SERVICE`          | [`fastcgi_pass`](https://nginx.org/en/docs/http/ngx_http_fastcgi_module.html#fastcgi_pass)                 | `host:port` of the PHP-FPM service              |
| `NGINX_FASTCGI_READ_TIMEOUT` | [`fastcgi_read_timeout`](https://nginx.org/en/docs/http/ngx_http_fastcgi_module.html#fastcgi_read_timeout) | Timeout for reading a response from PHP-FPM     |
| `NGINX_CRON_METRICS`         | [`proxy_pass`](https://nginx.org/en/docs/http/ngx_http_proxy_module.html#proxy_pass)                       | `host:port` of the supercronic metrics endpoint |

All of these must be set on the `nginx` service's `environment` (as done in
[`docker-compose.yml`](docker-compose.yml)) – `envsubst` has no default value syntax, so an unset variable is replaced
with an empty string and nginx will fail to start.

> [!TIP]
> When increasing `NGINX_FASTCGI_READ_TIMEOUT`, remember to increase `PHP_MAX_EXECUTION_TIME` on the `phpfpm` service
> accordingly.
