# ITK-dev docker setup

This repository contains the custom images used by ITK-dev to support docker in
development and production. It also contains tools to make docker usage easier
in development.

## Docker install

Recommend to that you install [Docker Desktop for
Mac](https://docs.docker.com/docker-for-mac/install/) and create account at
[https://hub.docker.com/](https://hub.docker.com/) the account can be link to
"itkdev" organisation allow you to push new images.

## Usage

### Requirement for all commands to work

You need to have some local packages installed via brew for all things to work.

Completions don't work with the bash completion that comes with macOS. So please
install a newer version:

```sh
brew install bash-completion
```

__Note__: You have to follow the instructions brew writes to get it working (use
`brew info bash-completion` to show the info).

The database sync will not work if you don't have a local mysql client installed:

```sh
brew install mysql-client
```

__Note__: You have to follow the instructions brew writes to get it working (use
`brew info mysql-client` to show the info).

If you use the [Dory](https://github.com/FreedomBen/dory) revers proxy required to
run DDF CMS unmodified you need to install dory. We only use dory for DPL/DDF shared
projects (multi supplier projects).
```sh
brew install dory
```

### Templates

The [`templates`](templates/) directory contains templates for adding
the itkdev `docker-compose` setup to new or exiting projects.

```sh
rsync -avz templates/<TYPE>/ <PATH TO HTDOCS FOLDER>
```

Also create an `.env` file beside the `docker-compose.yml` file that contains
`COMPOSE_PROJECT_NAME=<NAME>` to namespace the docker setup for the projekt.

### Docker commands

Start containers: `docker-compose up -d`

Stop containers: `docker-compose stop`

Stop and remove containers: `docker-compose down`

List containers in the project: `docker-compose ps`

Restart container: `docker-compose restart <CONTAINER NAME>`

### Helper scripts

The [`scripts/itkdev-docker-compose`](scripts/itkdev-docker-compose)
script makes it easier to run common commands in the docker
containers.

Add the `scripts` directory to your `PATH` environment variable to run
the script from your `docker-compose` project.

If you're using the `bash` shell, run

```sh
echo 'export PATH="'$(git rev-parse --show-toplevel)/scripts':$PATH"' >> ~/.bashrc
```

to add the script to your `PATH`. If you're running `zsh`, run

```sh
echo 'export PATH="'$(git rev-parse --show-toplevel)/scripts':$PATH"' >> ~/.zshrc
```

After updating your path, run `itkdev-docker-compose` in your project folder to
see what the script can do.

### Environment

The helper script uses an `.env` file in the root of the project for projekt
base configuration.

The `COMPOSE_PROJECT_NAME` is always required and the script will stop execution
if any of the need variables have not been set when needed.

#### Example .env file

```sh
COMPOSE_PROJECT_NAME=ereolen
REMOTE_HOST=ereolen.dk
REMOTE_DB_DUMP_CMD='drush --root=/data/www/ereolen_dk/htdocs --uri=ereolen.dk sql-dump'
REMOTE_PATH='/data/www/ereolen_dk/htdocs/sites/default/files'
REMOTE_EXCLUDE=(ting styles advagg_*)
LOCAL_PATH='sites/default/files'
```

## SSL certification support

This setup comes with self-signed wildcard certificates for *.local.itkdev.dk, but other certificates can be generated by using this openssl command on Mac, just change the two places where the domain is written.

```sh
openssl req -x509 -sha256 -nodes -days 3650 -newkey rsa:2048 -keyout docker.key -out docker.crt -subj "/CN=*.local.itkdev.dk" -reqexts SAN -extensions SAN -config <(cat /usr/local/etc/openssl/openssl.cnf <(printf '[SAN]\nsubjectAltName=DNS:*.local.itkdev.dk'))
```

To mac browser trust this certificate you need to open it with key-chain right click and select "Get info" and then open the "Trust" tab and select "Always trust".

The certificate is located in `./treafik/ssl/docker.crt` in this repository.

## Completions

### Bash

You can install completions for `bash` by running:

```sh
ln -s $(git rev-parse --show-toplevel)/completion/bash/itkdev-docker-compose-completion.bash $(brew --prefix)/etc/bash_completion.d/itkdev-docker-compose
```

### Zsh

You can install completions for `zsh` by updating `fpath` in `~/.zshrc`, e.g. by running:

```sh
echo "fpath=($(git rev-parse --show-toplevel)/completion/zsh \$fpath) # itkdev-docker " >> ~/.zshrc
```

### Docker UI

If you want a graphical user interface to see what images and containers are
running in you local setup you can use "potainer".

`docker run -d -p 9080:9000 -v /var/run/docker.sock:/var/run/docker.sock portainer/portainer`

Open you browser at [http://0.0.0.0:9080](http://0.0.0.0:9080) and follow the
on-screen instructions.

## ITK Images

At ITK-dev we have created docker images that matches our development.

The fuld list can be found at
[https://hub.docker.com/search?q=itkdev&type=image](https://hub.docker.com/search?q=itkdev&type=image).

## More
For more details about usage see https://docs.itkdev.dk

## Previous versions

### NFS mounts removed

From version 3.0.0 the feature to use NFS mounted name-volumes has been removed
because it is no longer compatible with MacOS. (@see https://github.com/docker/for-mac/issues/6544)

If you have previously enabled NFS with `nfs:enable` you should clean up as
follows:
```shell
sudo nano /etc/exports
# Delete the line matching this pattern, and save you changes
# /System/Volumes/Data/Users -alldirs -mapall=501:20 localhost

sudo nano /etc/nfs.conf
# Delete the line matching this pattern, and save you changes
# nfs.server.mount.require_resv_port = 0

# Restart the NFS deamon
sudo nfsd restart
```
