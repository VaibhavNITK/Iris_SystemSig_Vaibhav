FROM ruby:3.0.5
RUN apt-get update -qq && apt-get install -y nodejs yarn default-mysql-client
RUN mkdir /myapp
WORKDIR /myapp
COPY Gemfile* /myapp/
RUN bundle install
COPY . /myapp/
RUN rails db:migrate
EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]