# Symfony project template

This is the current generic template for Symfony projects.

Specific version templates are created by symlinking to this folder, e.g.

``` text
templates/symfony-8
├── .docker -> ../symfony/.docker
├── docker-compose.dev.yml -> ../symfony/docker-compose.dev.yml
├── docker-compose.redirect.yml -> ../symfony/docker-compose.redirect.yml
├── docker-compose.server.yml -> ../symfony/docker-compose.server.yml
└── docker-compose.yml -> ../symfony/docker-compose.yml
```

> [!NOTE]
> GitHub workflow files and code check config files are handled in another symlink show.
