FROM ruby:2.6.3-alpine3.9

RUN bundle config --global frozen 1
RUN mkdir -p /app

WORKDIR /app

COPY . ./
RUN gem install bundler && bundle install

EXPOSE 4567

CMD ["bundle", "exec", "ruby", "main.rb"]
