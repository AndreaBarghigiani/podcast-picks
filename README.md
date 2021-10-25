# Testing Blog

## Workflow

1. Create a feature or hotfix branch from `master`.
2. For feature branches, create a pull request and a review-app on Heroku will be created.
3. Check so everything works, get someone to review it internally or with the client.
4. Merge and it will be deployed to Staging.
5. Make sure everything looks good on Staging. Client Reviews current Staging (Can be multiple features).
6. Click `Promote to production` ([Heroku pipeline](https://dashboard.heroku.com/pipelines))

## Development

The development setup uses the [asdf version manager](https://asdf-vm.com) to keep the version the same across all developers. **By default a specific version of nodejs and ruby is installed. If this version is changed you should update the [docker image](https://github.com/oddcamp/asdf-docker), otherwise running a `asdf install` will take some time.**

Always commit the `.tool-versions` file when upgrading a version.

### Environment variables

We require you to have one environment variables in your `.zshrc`, `.bashrc`, `.env` or whatever shell you use.

- `GITHUB_ACCESS_TOKEN` - Get this one from [Github](https://github.com/settings/tokens/).

In a shell you export it like this: `export GITHUB_ACCESS_TOKEN=<TOKEN>`.

### Setup

1. Create a `.env` and add the env vars from 1Password
2. `docker-compose build`
3. `docker-compose run --rm app bin/dev_setup` (with one of the options below)

#### Setup options

`bin/dev_setup` has support for multiple options that you can set depending on the way you want the development environment set up.

**Options:**

- `--setup` (`-s`) - Installs dependencies, creates database and runs migrations
- `--create` (`-c`) - Creates database
- `--dependencies` (`-d`) - Install dependencies
- `--migrate` (`-m`) - Runs migrations
- `--seeds` - Runs seeds
- `--fakerize` (`-c`) - Fakerize's all personal data

### Running locally

```
$ docker-compose up
```

Site is now running on `http://localhost:3000`

## Production

### Rails

#### Environment

https://www.application.website

Protected with Basic Auth until the public release. The credentials are in 1P.

#### Heroku app

https://dashboard.heroku.com/apps/application-website-production

### Download database from production to your local environment

Get all the data from **production**.

1. Setup the development environment except the last task.
2. Install dependencies and create database with `docker-compose run --rm app bin/dev_setup -d -c`
3. `$ heroku pg:backups capture --app application-website-production`
4. `$ curl -o tmp/backup/latest.dump $(heroku pg:backups public-url --app application-website-production)`
5. `docker-compose exec postgres pg_restore --verbose --clean --username=postgres --password --no-acl --no-owner -h postgres -d application-website_development /tmp/backup/latest.dump`

## Staging

### Rails

#### Environment

https://staging.application.website

Protected with Basic Auth. The credentials are in 1P.

#### Heroku app

https://dashboard.heroku.com/apps/application-website-staging

### Download database from staging to your local environment

Get all the data from **staging**.

1. Setup the development environment except the last task.
2. Install dependencies and create database with `docker-compose run --rm app bin/dev_setup -d -c`
3. `$ heroku pg:backups capture --app application-website-staging`
4. `$ curl -o tmp/backup/latest.dump $(heroku pg:backups public-url --app application-website-staging)`
5. `docker-compose exec postgres pg_restore --verbose --clean --username=postgres --password --no-acl --no-owner -h postgres -d application-website_development /tmp/backup/latest.dump`
