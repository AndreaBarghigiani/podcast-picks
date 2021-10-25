FROM docker.pkg.github.com/oddcamp/asdf-docker/ruby:2.7.2-1

# Setup environment variables that will be available to the instance
ARG GITHUB_ACCESS_TOKEN
ARG DEBIAN_FRONTEND=noninteractive
ENV APP_HOME /app
ENV GEM_HOME /asdf/.gems
ENV GEM_PATH /asdf/.gems

USER root
RUN apt-get update
RUN apt-get install -y tzdata
RUN apt-get install -y libv8-dev pkg-config libpq-dev
RUN mkdir -p $APP_HOME
RUN chown -R asdf:asdf $APP_HOME

# CD the folder
USER asdf
WORKDIR $APP_HOME

# Add any missing tools
ADD .tool-versions $APP_HOME
RUN cd $APP_HOME
RUN asdf install
RUN asdf current

# Fix gem path
RUN mkdir -p "$GEM_PATH" && chown asdf:asdf "$GEM_PATH"
RUN gem install bundler

# Needs to be run inside of the folder that has .tool-versions
RUN npm config set @oddcamp:registry https://npm.pkg.github.com/
RUN echo "//npm.pkg.github.com/:_authToken=${GITHUB_ACCESS_TOKEN}" >> ~/.npmrc

# Needed due to docker volumes only give you root:root chown by default.
RUN mkdir -p "$APP_HOME/tmp/cache" && chown asdf:asdf "$APP_HOME/tmp/cache"
RUN mkdir -p "$APP_HOME/node_modules" && chown asdf:asdf "$APP_HOME/node_modules"
