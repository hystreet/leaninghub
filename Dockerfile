FROM ruby:2.3.3
WORKDIR /app
COPY Gemfile* ./
RUN bundle install
ADD . /app
EXPOSE 4000
CMD bundle exec jekyll serve -H 0.0.0.0
