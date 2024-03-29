FROM ruby:3.2.2
WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN bundle install
RUN apt-get update -qq && apt-get install -y graphviz
COPY . /app
CMD ["rails", "server", "-b", "0.0.0.0"]
