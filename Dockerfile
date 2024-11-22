FROM ruby:3.1.0

# Install dependencies
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

# Set up the working directory
WORKDIR /myapp

# Install bundler
RUN gem install bundler

# Install gems
COPY Gemfile Gemfile.lock ./
RUN bundle install

# Copy the rest of the app
COPY . ./

# Precompile assets
RUN bin/rails assets:precompile

# Expose port for Puma
EXPOSE 3000

# Run the application
CMD ["bin/rails", "server", "-b", "0.0.0.0"]
