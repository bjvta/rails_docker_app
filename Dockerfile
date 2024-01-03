# Use the official Ruby 3.0.6 image as the base image
FROM ruby:3.0.6-slim

# Install Rails dependencies
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs libsqlite3-dev

# Create a folder /myapp in the Docker container and go into that folder
RUN mkdir /myapp
WORKDIR /myapp

# Copy the Gemfile and Gemfile.lock from the app's root directory into the /myapp/ folder in the Docker container
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock

# Run bundle install to install gems specified in the Gemfile
RUN bundle install

# Copy the entire app into the Docker container
COPY . /myapp