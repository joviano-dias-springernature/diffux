FROM te-docker.docker-registry.tools.springer-sbm.com/fig-env_java-8_ruby_bundler_diffux-base

MAINTAINER Springer Nature QA <springerqa@googlegroups.com>

ENV APP_HOME /diffux
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

ADD Gemfile* $APP_HOME/

RUN bundle install

ADD . $APP_HOME

RUN cd $APP_HOME

# Run redis
RUN redis-server --daemonize yes;

# Add db config
RUN cp config/database.yml.example config/database.yml

# Set up dbs
RUN bundle exec rake db:setup

# Start webapp
CMD bundle exec rails server