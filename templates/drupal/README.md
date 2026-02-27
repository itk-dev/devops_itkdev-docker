# Drupal project template

This is the current generic template for Drupal projects.

Specific version templates are created by symlinking to this folder, e.g.

``` text
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
