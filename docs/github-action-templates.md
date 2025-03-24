# Github Actions templates

This repository contains a number of [GitHub
Actions](https://docs.github.com/en/actions) workflow template files that
are copied to a project when running `itkdev-docker-compose
template:install`. Any changes to the workflows should be made in [this
repository](%THIS_REPOSITORY%) and then the project template must be updated
to match the new templates.

---

[github/workflows/changelog.yaml](github/workflows/changelog.yaml)

## Changelog

Checks that changelog has been updated

---

[github/workflows/composer.yaml](github/workflows/composer.yaml)

## Composer

Validates composer.json and checks that it's normalized.

### Assumptions

1. A docker compose service named `phpfpm` can be run and `composer` can be
   run inside the `phpfpm` service.
2. [ergebnis/composer-normalize](https://github.com/ergebnis/composer-normalize)
   is a dev requirement in `composer.json`:

   ``` shell
   docker compose run --rm phpfpm composer require --dev ergebnis/composer-normalize
   ```

   Normalize `composer.json` by running

   ``` shell
   docker compose run --rm phpfpm composer normalize
   ```

---

[github/workflows/drupal.yaml](github/workflows/drupal.yaml)

## Drupal

Checks that site can be installed and can be updated (from base branch on
pull request).

### Assumptions

1. A docker compose service named `phpfpm` can be run and `composer` can be
   run inside the `phpfpm` service.
2. The docker setup contains a database container and other the dependent services and the
3. The Drupal site can be installed from existing config.

---

[github/workflows/markdown.yaml](github/workflows/markdown.yaml)

## Markdown

Uses [itkdev/markdownlint](https://hub.docker.com/r/itkdev/markdownlint) to
link all Markdown files (`**/*.md`) in the project.

[markdownlint-cli configuration ### files](https://github.com/igorshubovych/markdownlint-cli?tab=readme-ov-file#configuration),
`.markdownlint.jsonc` and `.markdownlintignore` control what is actually linted and how.
