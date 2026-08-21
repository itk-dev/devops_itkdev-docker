# Changelog

This project defaults to the `develop` branch when installed locally, so a
merged PR is effectively a release. Rather than following SemVer or "Keep a
Changelog", this file is a reverse-chronological list of merged pull requests.

## Open PR's

- [PR-148](https://github.com/itk-dev/devops_itkdev-docker/pull/148) - 2026-08-21 -
  Consolidated the workflow templates into `<type>/lint.yaml` (changelog,
  Markdown, YAML, styles, JavaScript) and `<type>/php.yaml` (Composer, coding
  standards, Twig), so a commit pays for two runner jobs instead of up to
  eleven. All `docker compose run` calls use `--no-deps` and the `vendor`
  directory is cached
- [PR-145](https://github.com/itk-dev/devops_itkdev-docker/pull/145) - 2026-07-08 -
  Updated GitHub Actions to latest versions (`actions/checkout` to `v7`,
  `go-task/setup-task` to `v2`) in workflow templates and repository CI
- [PR-143](https://github.com/itk-dev/devops_itkdev-docker/pull/143) - 2026-06-02 -
  Fixed `composer audit` action to audit the lock file (`--locked`) for
  compatibility with the latest Composer
- [PR-142](https://github.com/itk-dev/devops_itkdev-docker/pull/142) - 2026-05-21 -
  Add Prettier config for Taskfiles
- [PR-135](https://github.com/itk-dev/devops_itkdev-docker/pull/135) - 2026-01-29 -
  Add Podman support with dynamic machine detection
- [PR-126](https://github.com/itk-dev/devops_itkdev-docker/pull/126) - 2026-01-05 -
  Add actionlint
- [PR-116](https://github.com/itk-dev/devops_itkdev-docker/pull/116) - 2025-07-29 -
  Add build release jobs to standard GitHub Actions
- [PR-115](https://github.com/itk-dev/devops_itkdev-docker/pull/115) - 2025-07-11 -
  Added general `.editorconfig` file
- [PR-109](https://github.com/itk-dev/devops_itkdev-docker/pull/109) - 2025-05-08 -
  Workflow documentation
- [PR-40](https://github.com/itk-dev/devops_itkdev-docker/pull/40) - 2020-04-28 -
  Fixed path to self (`itkdev-docker-compose`)

## Merged PR's

### 2026

- [PR-141](https://github.com/itk-dev/devops_itkdev-docker/pull/141) - 2026-03-23 -
  Added GitHub Action to validate changelog on PR events. Rebuilt changelog format.
- [PR-140](https://github.com/itk-dev/devops_itkdev-docker/pull/140) - 2026-03-23 -
  GitHub Actions maintenance
- [PR-139](https://github.com/itk-dev/devops_itkdev-docker/pull/139) - 2026-03-06 -
  Added completion action
- [PR-138](https://github.com/itk-dev/devops_itkdev-docker/pull/138) - 2026-03-06 -
  Built completions with Completely
- [PR-137](https://github.com/itk-dev/devops_itkdev-docker/pull/137) - 2026-03-06 -
  Added templates for Symfony 7 and 8
- [PR-136](https://github.com/itk-dev/devops_itkdev-docker/pull/136) - 2026-02-16 -
  Fixed domain for cron-metrics
- [PR-134](https://github.com/itk-dev/devops_itkdev-docker/pull/134) - 2026-01-27 -
  Required non-empty values for environment variables without sensible defaults
- [PR-133](https://github.com/itk-dev/devops_itkdev-docker/pull/133) - 2026-01-20 -
  Cleaned up and improved drush subcommand
- [PR-132](https://github.com/itk-dev/devops_itkdev-docker/pull/132) - 2026-01-12 -
  Fixed drush call to use `.php` ending
- [PR-131](https://github.com/itk-dev/devops_itkdev-docker/pull/131) - 2026-01-12 -
  Added php to drush call to trigger xdebug breakpoints
- [PR-130](https://github.com/itk-dev/devops_itkdev-docker/pull/130) - 2026-01-19 -
  Added support for cron metrics export in nginx
- [PR-129](https://github.com/itk-dev/devops_itkdev-docker/pull/129) - 2026-01-07 -
  Used `memcached:alpine` in server setups
- [PR-128](https://github.com/itk-dev/devops_itkdev-docker/pull/128) - 2026-01-07 -
  Fixed nginx `set_real_ip_from` conf (`envsubst` does not support default
  values)

### 2025

- [PR-124](https://github.com/itk-dev/devops_itkdev-docker/pull/124) - 2025-11-27 -
  Removed unused Dory references
- [PR-123](https://github.com/itk-dev/devops_itkdev-docker/pull/123) - 2025-11-27 -
  Renamed Traefik entrypoints to `web`/`websecure`, added `traefik:pull` and
  `traefik:logs` commands
- [PR-122](https://github.com/itk-dev/devops_itkdev-docker/pull/122) - 2025-11-25 -
  Updated nginx conf to add custom docker IP range via
  `NGINX_SET_REAL_IP_FROM` env variable
- [PR-121](https://github.com/itk-dev/devops_itkdev-docker/pull/121) - 2025-11-17 -
  Changed `COMPOSE_USER` to `runner`
- [PR-120](https://github.com/itk-dev/devops_itkdev-docker/pull/120) - 2025-11-12 -
  Upgraded Traefik to 3.6
- [PR-119](https://github.com/itk-dev/devops_itkdev-docker/pull/119) - 2025-10-15 -
  Updated Symfony template to use PHP 8.4
- [PR-118](https://github.com/itk-dev/devops_itkdev-docker/pull/118) - 2025-10-21 -
  Updated to `actions/checkout@v5` and `go-task/setup-task@v1`
- [PR-117](https://github.com/itk-dev/devops_itkdev-docker/pull/117) - 2025-09-10 -
  Removed Dory from readme
- [PR-114](https://github.com/itk-dev/devops_itkdev-docker/pull/114) - 2025-07-07 -
  Added more info on "Check that site can be updated" job
- [PR-113](https://github.com/itk-dev/devops_itkdev-docker/pull/113) - 2025-07-07 -
  Job steps cleanup
- [PR-111](https://github.com/itk-dev/devops_itkdev-docker/pull/111) - 2025-06-27 -
  Added markdownlint and prettier services to templates
- [PR-110](https://github.com/itk-dev/devops_itkdev-docker/pull/110) - 2025-06-13 -
  Added YAML linting
- [PR-108](https://github.com/itk-dev/devops_itkdev-docker/pull/108) - 2025-05-20 -
  Added Drupal module template
- [PR-107](https://github.com/itk-dev/devops_itkdev-docker/pull/107) - 2025-04-23 -
  Added Drupal 11 template
- [PR-106](https://github.com/itk-dev/devops_itkdev-docker/pull/106) - 2025-04-22 -
  Added `template:update` command
- [PR-105](https://github.com/itk-dev/devops_itkdev-docker/pull/105) - 2025-04-07 -
  Added `DRUSH_OPTIONS_URI` to env for phpfpm container
- [PR-104](https://github.com/itk-dev/devops_itkdev-docker/pull/104) - 2025-06-23 -
  Added GitHub Actions templates and tool configuration files
- [PR-99](https://github.com/itk-dev/devops_itkdev-docker/pull/99) - 2025-04-03 -
  Added `sql:cli` command and run mysql client inside mariadb container

### 2024

- [PR-103](https://github.com/itk-dev/devops_itkdev-docker/pull/103) - 2024-11-08 -
  Added memcache and mariadb health checks
- [PR-102](https://github.com/itk-dev/devops_itkdev-docker/pull/102) - 2024-11-07 -
  Updated to PHP 8.3
- [PR-101](https://github.com/itk-dev/devops_itkdev-docker/pull/101) - 2024-08-23 -
  Fixed correct IP in nginx logs
- [PR-100](https://github.com/itk-dev/devops_itkdev-docker/pull/100) - 2024-08-19 -
  Added `serversTransport.insecureSkipVerify` in Traefik config
- [PR-98](https://github.com/itk-dev/devops_itkdev-docker/pull/98) - 2024-05-24 -
  Updated `tput` options
- [PR-97](https://github.com/itk-dev/devops_itkdev-docker/pull/97) - 2024-05-21 -
  Resurrected `xdebug` command
- [PR-96](https://github.com/itk-dev/devops_itkdev-docker/pull/96) - 2024-05-14 -
  Added `sql:log` command
- [PR-95](https://github.com/itk-dev/devops_itkdev-docker/pull/95) - 2024-05-14 -
  Added support for custom compose file via `COMPOSE_FILE` environment variable
- [PR-94](https://github.com/itk-dev/devops_itkdev-docker/pull/94) - 2024-05-21 -
  Fixed default nginx port to 8080
- [PR-93](https://github.com/itk-dev/devops_itkdev-docker/pull/93) - 2024-04-29 -
  Added option to change nginx body size
- [PR-92](https://github.com/itk-dev/devops_itkdev-docker/pull/92) - 2024-01-24 -
  Nginx dynamic configuration (configurable web-root and port, removed old
  templates)
- [PR-78](https://github.com/itk-dev/devops_itkdev-docker/pull/78) - 2024-05-14 -
  Improved handling of Traefik hosts

### 2023

- [PR-91](https://github.com/itk-dev/devops_itkdev-docker/pull/91) - 2023-11-20 -
  Added `self:update` command
- [PR-90](https://github.com/itk-dev/devops_itkdev-docker/pull/90) - 2023-10-10 -
  Added docker socket proxy
- [PR-89](https://github.com/itk-dev/devops_itkdev-docker/pull/89) - 2023-10-03 -
  Updated information on using Xdebug (PHPStorm and VS Code)
- [PR-88](https://github.com/itk-dev/devops_itkdev-docker/pull/88) - 2023-08-15 -
  Added Mailpit for test mail (`mail:url` and `mail:open` commands)
- [PR-87](https://github.com/itk-dev/devops_itkdev-docker/pull/87) - 2023-05-17 -
  Added `restart: unless-stopped` to mailhog service in server dev setup
- [PR-86](https://github.com/itk-dev/devops_itkdev-docker/pull/86) - 2023-03-30 -
  Added `index.php` redirect to nginx
- [PR-84](https://github.com/itk-dev/devops_itkdev-docker/pull/84) - 2023-04-17 -
  Upgraded Traefik from 2.6 to 2.9
- [PR-83](https://github.com/itk-dev/devops_itkdev-docker/pull/83) - 2023-03-09 -
  Increased `fastcgi_buffers` in nginx config to avoid upstream header errors
- [PR-82](https://github.com/itk-dev/devops_itkdev-docker/pull/82) - 2023-03-09 -
  Added data dir to `.docker` as default location for persistent volumes
- [PR-81](https://github.com/itk-dev/devops_itkdev-docker/pull/81) - 2023-02-22 -
  Fixed mailhog Traefik labels for Symfony 6 template
- [PR-80](https://github.com/itk-dev/devops_itkdev-docker/pull/80) - 2023-02-14 -
  Removed `nfs` volume usage for better macOS Ventura compatibility
- [PR-79](https://github.com/itk-dev/devops_itkdev-docker/pull/79) - 2023-01-27 -
  Updated nginx config with better logging of real IP

### 2022

- [PR-77](https://github.com/itk-dev/devops_itkdev-docker/pull/77) - 2022-12-22 -
  Added missing `sendmail_path` in PHP settings
- [PR-76](https://github.com/itk-dev/devops_itkdev-docker/pull/76) - 2022-11-07 -
  Image clean up and ensure deploy user
- [PR-68](https://github.com/itk-dev/devops_itkdev-docker/pull/68) - 2022-11-04 -
  Changed `docker-compose` to `docker compose`
- [PR-75](https://github.com/itk-dev/devops_itkdev-docker/pull/75) - 2022-11-02 -
  Added missing semicolon
- [PR-74](https://github.com/itk-dev/devops_itkdev-docker/pull/74) - 2022-10-18 -
  Added `php` command
- [PR-73](https://github.com/itk-dev/devops_itkdev-docker/pull/73) - 2022-10-18 -
  Switch to `nginxinc/nginx-unprivileged`
- [PR-72](https://github.com/itk-dev/devops_itkdev-docker/pull/72) - 2022-09-12 -
  Added support for MSSQL in PHP 7.4-8.1
- [PR-71](https://github.com/itk-dev/devops_itkdev-docker/pull/71) - 2022-09-01 -
  Changed normal user UID to resolve docker mapping issues
- [PR-70](https://github.com/itk-dev/devops_itkdev-docker/pull/70) - 2022-08-26 -
  ITK Dev mailhog image
- [PR-69](https://github.com/itk-dev/devops_itkdev-docker/pull/69) - 2022-08-23 -
  Added supervisor image
- [PR-67](https://github.com/itk-dev/devops_itkdev-docker/pull/67) - 2022-07-15 -
  Updated composer version and debug line in templates
- [PR-66](https://github.com/itk-dev/devops_itkdev-docker/pull/66) - 2022-06-01 -
  Allow traefik/dory start/stop without `.env`/`docker-compose` files
- [PR-65](https://github.com/itk-dev/devops_itkdev-docker/pull/65) - 2022-05-19 -
  Updated `settings.php` to local for Drupal 9 template
- [PR-64](https://github.com/itk-dev/devops_itkdev-docker/pull/64) - 2022-04-07 -
  Added composer YAML overrides for configuration
- [PR-60](https://github.com/itk-dev/devops_itkdev-docker/pull/60) - 2022-04-06 -
  Added database container labels
- [PR-63](https://github.com/itk-dev/devops_itkdev-docker/pull/63) - 2022-03-08 -
  Added timezone and PHP 8.1 image
- [PR-62](https://github.com/itk-dev/devops_itkdev-docker/pull/62) - 2022-03-03 -
  Added `host.docker.internal` network host
- [PR-61](https://github.com/itk-dev/devops_itkdev-docker/pull/61) - 2022-03-03 -
  Symfony 6 template
- [PR-59](https://github.com/itk-dev/devops_itkdev-docker/pull/59) - 2022-01-21 -
  Added Dory reverse proxy for DPL projects

### 2021

- [PR-58](https://github.com/itk-dev/devops_itkdev-docker/pull/58) - 2021-11-13 -
  Fixed typos and bugs
- [PR-57](https://github.com/itk-dev/devops_itkdev-docker/pull/57) - 2021-11-18 -
  Added NFS support and `version` command
- [PR-56](https://github.com/itk-dev/devops_itkdev-docker/pull/56) - 2021-10-25 -
  Revert "Add additional environment variables to docker-compose call"
- [PR-55](https://github.com/itk-dev/devops_itkdev-docker/pull/55) - 2021-10-23 -
  Added Trivy action
- [PR-49](https://github.com/itk-dev/devops_itkdev-docker/pull/49) - 2021-10-23 -
  Drupal 9 template
- [PR-43](https://github.com/itk-dev/devops_itkdev-docker/pull/43) - 2021-10-23 -
  Added `sync:db` post script
- [PR-41](https://github.com/itk-dev/devops_itkdev-docker/pull/41) - 2021-10-23 -
  Added mailhog Traefik URLs to templates
- [PR-12](https://github.com/itk-dev/devops_itkdev-docker/pull/12) - 2021-10-23 -
  Added additional environment variables to docker-compose call
- [PR-54](https://github.com/itk-dev/devops_itkdev-docker/pull/54) - 2021-09-08 -
  Enabled self-signed cert in Traefik
- [PR-53](https://github.com/itk-dev/devops_itkdev-docker/pull/53) - 2021-09-06 -
  Added json-server docker image
- [PR-51](https://github.com/itk-dev/devops_itkdev-docker/pull/51) - 2021-04-12 -
  Added color coding and labels to `sql:open` command
- [PR-50](https://github.com/itk-dev/devops_itkdev-docker/pull/50) - 2021-04-08 -
  Updated docker images and server compose setup
- [PR-48](https://github.com/itk-dev/devops_itkdev-docker/pull/48) - 2021-01-28 -
  Added docker compose server files
- [PR-47](https://github.com/itk-dev/devops_itkdev-docker/pull/47) - 2021-01-22 -
  Alpine images
- [PR-46](https://github.com/itk-dev/devops_itkdev-docker/pull/46) - 2021-01-22 -
  Added better xdebug mode handling
- [PR-45](https://github.com/itk-dev/devops_itkdev-docker/pull/45) - 2021-01-21 -
  Xdebug 3.x in PHP >= 7.3 images

### 2020

- [PR-44](https://github.com/itk-dev/devops_itkdev-docker/pull/44) - 2020-12-07 -
  PHP 8.0 image
- [PR-42](https://github.com/itk-dev/devops_itkdev-docker/pull/42) - 2020-08-25 -
  Added `sql:open` command as shortcut to open TablePlus or other DB GUI

### 2019

- [PR-38](https://github.com/itk-dev/devops_itkdev-docker/pull/38) - 2019-12-02 -
  Added service and port options to `url` command
- [PR-37](https://github.com/itk-dev/devops_itkdev-docker/pull/37) - 2019-12-02 -
  Added `shell` command
- [PR-36](https://github.com/itk-dev/devops_itkdev-docker/pull/36) - 2019-12-02 -
  Fixed typo, removed trailing whitespace
- [PR-35](https://github.com/itk-dev/devops_itkdev-docker/pull/35) - 2019-11-11 -
  Automatically find xdebug remote host
- [PR-34](https://github.com/itk-dev/devops_itkdev-docker/pull/34) - 2019-10-02 -
  Added `template:install` command
- [PR-33](https://github.com/itk-dev/devops_itkdev-docker/pull/33) - 2019-10-01 -
  Added error handling
- [PR-32](https://github.com/itk-dev/devops_itkdev-docker/pull/32) - 2019-10-02 -
  Global Traefik proxy
- [PR-31](https://github.com/itk-dev/devops_itkdev-docker/pull/31) - 2019-09-25 -
  Added new configuration variables and documentation
- [PR-30](https://github.com/itk-dev/devops_itkdev-docker/pull/30) - 2019-09-20 -
  Updated DDB templates
- [PR-29](https://github.com/itk-dev/devops_itkdev-docker/pull/29) - 2019-09-19 -
  Changed labels and flags for using Traefik 2.0
- [PR-28](https://github.com/itk-dev/devops_itkdev-docker/pull/28) - 2019-09-17 -
  Added more CLI debug info
- [PR-24](https://github.com/itk-dev/devops_itkdev-docker/pull/24) - 2019-09-19 -
  Added completions for zsh, moved bash completions
- [PR-27](https://github.com/itk-dev/devops_itkdev-docker/pull/27) - 2019-08-21 -
  Ensure that `down` cleans up automatically
- [PR-26](https://github.com/itk-dev/devops_itkdev-docker/pull/26) - 2019-08-07 -
  Added `DOCKER_HOST_DOMAIN`
- [PR-25](https://github.com/itk-dev/devops_itkdev-docker/pull/25) - 2019-07-23 -
  Added info in CLI debugging
- [PR-22](https://github.com/itk-dev/devops_itkdev-docker/pull/22) - 2019-06-17 -
  Use `pv` in `sync:db` if available
- [PR-21](https://github.com/itk-dev/devops_itkdev-docker/pull/21) - 2019-06-17 -
  Added eval hack
- [PR-18](https://github.com/itk-dev/devops_itkdev-docker/pull/18) - 2019-06-16 -
  Updated readme
- [PR-20](https://github.com/itk-dev/devops_itkdev-docker/pull/20) - 2019-04-05 -
  Added custom mariadb image and drush cache
- [PR-19](https://github.com/itk-dev/devops_itkdev-docker/pull/19) - 2019-04-04 -
  Added support for setting PHP limits
- [PR-16](https://github.com/itk-dev/devops_itkdev-docker/pull/16) - 2019-03-29 -
  Fixed completion and `:`
- [PR-17](https://github.com/itk-dev/devops_itkdev-docker/pull/17) - 2019-03-22 -
  Removed colon ambiguity
- [PR-15](https://github.com/itk-dev/devops_itkdev-docker/pull/15) - 2019-03-19 -
  Added `sync` commands
- [PR-14](https://github.com/itk-dev/devops_itkdev-docker/pull/14) - 2019-03-01 -
  Removed eReolen varnish references
- [PR-13](https://github.com/itk-dev/devops_itkdev-docker/pull/13) - 2019-02-27 -
  Cleaned up `server_name`
- [PR-11](https://github.com/itk-dev/devops_itkdev-docker/pull/11) - 2019-02-25 -
  Added support for easy image update
- [PR-10](https://github.com/itk-dev/devops_itkdev-docker/pull/10) - 2019-02-23 -
  Fixed check for drush path
- [PR-9](https://github.com/itk-dev/devops_itkdev-docker/pull/9) - 2019-02-20 -
  Added DDB CMS docker setup with minimal init db
- [PR-8](https://github.com/itk-dev/devops_itkdev-docker/pull/8) - 2019-02-19 -
  Fixed calls to docker-compose
- [PR-7](https://github.com/itk-dev/devops_itkdev-docker/pull/7) - 2019-02-19 -
  Added search for `docker-compose.yml`
- [PR-6](https://github.com/itk-dev/devops_itkdev-docker/pull/6) - 2019-02-18 -
  Added completion support
- [PR-5](https://github.com/itk-dev/devops_itkdev-docker/pull/5) - 2019-02-18 -
  Added mailhog support
- [PR-4](https://github.com/itk-dev/devops_itkdev-docker/pull/4) - 2019-02-15 -
  Added `sql` commands
- [PR-3](https://github.com/itk-dev/devops_itkdev-docker/pull/3) - 2019-02-15 -
  Added `hosts:insert` command
- [PR-2](https://github.com/itk-dev/devops_itkdev-docker/pull/2) - 2019-02-15 -
  Added support for xdebug
- [PR-1](https://github.com/itk-dev/devops_itkdev-docker/pull/1) - 2019-02-14 -
  Pass unknown command to docker-compose
