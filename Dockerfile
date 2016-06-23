FROM ruby:2.2

MAINTAINER rohanraja9@gmail.com

RUN apt-get update && apt-get -y install \
  curl \
  libxml2-dev libxslt1-dev \
  rsync \
  wget \
  nodejs \
  vim

# Install ruby gems.
RUN gem install --source "http://rubygems.org" --no-ri --no-rdoc bundler

# Configure the main working directory. This is the base
# directory used in any further RUN, COPY, and ENTRYPOINT
# commands.
ENV APP_HOME /app
RUN mkdir -p /$APP_HOME
WORKDIR /$APP_HOME

# Copy the Gemfile as well as the Gemfile.lock and install
# the RubyGems. This is a separate step so the dependencies
# will be cached unless changes to one of those two files
# are made.
COPY Gemfile Gemfile.lock ./
RUN gem install --source "http://rubygems.org" bundler && bundle install --source "http://rubygems.org" --jobs 20 --retry 5

# Copy the main application.
COPY . ./

# Expose port 3000 to the Docker host, so we can access it
# from the outside.
EXPOSE 3000

# Configure an entry point, so we don't need to specify
# "bundle exec" for each of our commands.
ENTRYPOINT ["bundle", "exec"]

# The main command to run when the container starts. Also
# tell the Rails dev server to bind to all interfaces by
# default.
CMD ["rails", "server", "-b", "0.0.0.0"]
