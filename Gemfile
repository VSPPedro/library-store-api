source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.4'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.0'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem 'rack-cors'

# A resource-focused Rails library for developing JSON API compliant servers
gem 'jsonapi-resources'
# Rack middleware for blocking & throttling 
gem 'rack-attack'

group :development, :test do
  # Provides Rails integration for factory_bot
  gem 'factory_bot_rails'
  # A library for generating fake data such as names, addresses, and phone numbers
  gem 'faker'
  # Step-by-step debugging and stack navigation in Pry
  gem 'pry-byebug'
  # Provides Rails integration for rspec
  gem 'rspec-rails', '~> 3.8'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Strategies for cleaning databases in Ruby
  gem 'database_cleaner'
  # Test matchers for jsonapi-resources 
  gem 'jsonapi-resources-matchers'
  # Simple one-liner tests for common Rails functionality
  gem 'shoulda-matchers'
  # Rack::Test is a layer on top of Rack's MockRequest similar to Merb's RequestHelper 
  gem 'rack-test'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
