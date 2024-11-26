FROM ruby:3.1.0

# Install dependencies
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

# Set working directory (this should be your project folder)
WORKDIR /portal

# Copy the Gemfile and Gemfile.lock
COPY Gemfile Gemfile.lock ./

# Install the required gems
RUN bundle install

# Ensure binstubs (like bin/rails) are generated
RUN bundle exec rails app:update:bin

# Copy the entire application
COPY . .

# Make sure the bin/rails file is executable
RUN chmod +x bin/rails

# Expose the application port
EXPOSE 3000

# Set the default command to start the Rails server
CMD ["bin/rails", "server", "-b", "0.0.0.0", "-p", "3000"]

