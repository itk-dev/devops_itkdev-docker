# Github Actions templates

This repository contains a number of [GitHub Actions](https://docs.github.com/en/actions) workflow template files that
are copied to a project when running `itkdev-docker-compose template:install`. Any changes to the workflows should be
made in [this repository](https://github.com/itk-dev/devops_itkdev-docker) and then the project template must be updated
to match the new templates.

## Naming conventions

* A workflow file is named after what it is _concerned_ with, not _how_ it's concerned with it and which tools are
  actually used, i.e. we have a [`lint.yaml`](github/workflows/symfony/lint.yaml) file and not a `prettier.yaml` file.
* A workflow covers several concerns when they share a container and a checkout: `lint.yaml` runs every check that needs
  no project dependencies, and `php.yaml` every check that needs the project's Composer dependencies. A pull request
  then pays for one runner job per group instead of one per tool, and a job is billed a whole minute however little it
  does.
* Workflows sit in a project type subfolder, currently `drupal`, `drupal-module` or `symfony`, e.g.
  `github/workflows/drupal`.
* Some tools require configuration files, and these sit in the `config` folder. Some tool configuration may be specific
  to a project type (or make sence only for a specific project type), and these specific config files sit in a project
  type subfolder, e.g. `config/drupal/php/.phpcs.xml.dist` and `config/drupal/twig/.twig-cs-fixer.dist.php`
* A workflow covering several concerns needs the configuration of each of them. `config-topics-for` in
  [`task/scripts/github-actions-link`](task/scripts/github-actions-link) maps a workflow name to its configuration
  folders, e.g. `php.yaml` to both `php` and `twig`.

## Templates

The current list of templates is shown in the following sections.

<!--insert:templates:here-->

---

## Updating template documentation

To update this document, run

``` shell
task github-actions:documentation:update
```

### GitHub Actions workflow documentation convention

Each workflow file must contain a single documentation block with lines starting with `###`, e.g.

``` markdown
### ### The title
###
### This template …
###
### See … for details.
```

> [!IMPORTANT]
> All lines in the documentation block must start with `###` and the documentation block consists of all consecutive
> lines starting with `###`.
