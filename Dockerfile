FROM ruby:3.1.0 as build

WORKDIR /usr/src/app

RUN apt-get update -qq && apt-get install -y nodejs build-essential postgresql-client

COPY Gemfile Gemfile.lock ./
RUN bundle install 

COPY . .

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]