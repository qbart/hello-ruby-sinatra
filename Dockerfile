FROM ruby:2.6.3-alpine3.9

RUN bundle config --global frozen 1
RUN mkdir -p /app

WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN gem install bundler && bundle install

COPY . .

CMD ["bundle", "ruby", "main.rb"]
