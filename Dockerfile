FROM ruby:2.6.3
RUN apt-get update -qq && apt-get install -y \
	nodejs \
    build-essential \                                                                                             
	libpq-dev \                                                                                                   
	nodejs \                                                                                                      
	mysql-client \                                                                                                
	vim-tiny   
RUN mkdir /myapp
WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
COPY . /myapp

