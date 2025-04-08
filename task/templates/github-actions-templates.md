# Github Actions templates

This repository contains a number of [GitHub Actions](https://docs.github.com/en/actions) workflow template files that
are copied to a project when running `itkdev-docker-compose template:install`. Any changes to the workflows should be
made in [this repository](https://github.com/itk-dev/devops_itkdev-docker) and then the project template must be updated
to match the new templates.

## Naming conventions

* A workflow file is named after what it is _concerned_ with, not _how_ it's concerned with it and which tools are
  actually used, i.e. we have a [`markdown.yaml`](github/workflows/markdown.yaml) file and not a `markdownlint.yaml`
  file.
* Some workflows are specific to a project type, currently `drupal` or `symfony`, and these sit in a project type
  subfolder, e.g. `github/workflows/drupal`.
* Some tools require configuration files, and these sit in the `config` folder. Some tool configuration may be specific
  to a project type (or make sence only for a specific project type), and these specific config files sit in a project
  type subfolder, e.g. `config/drupal/php/.phpcs.xml.dist` and `config/drupal/twig/.twig-cs-fixer.dist.php`

## Templates

<!--insert:templates:here-->

---
