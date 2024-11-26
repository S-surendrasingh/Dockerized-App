FROM ruby:3.1.0

# Install dependencies
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

# Set working directory
WORKDIR /myapp

# Install gems
COPY Gemfile Gemfile.lock ./
RUN bundle install

# Copy application files
COPY . .

# Expose the application port
EXPOSE 3000

# Set the default command
CMD ["bin/rails", "server", "-b", "0.0.0.0", "-p", "3000"]
