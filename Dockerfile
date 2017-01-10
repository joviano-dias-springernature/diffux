FROM fig-env_java-8_ruby_bundler-diffux

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

# Add config
RUN cp config/database.yml.example config/database.yml

RUN bundle exec rake db:setup