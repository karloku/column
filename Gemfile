# frozen_string_literal: true
source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '>= 5.0.0.beta3', '< 5.1'
# RailsConfig
gem 'config'
# Lograge
gem 'lograge'
# I18n
gem 'rails-i18n'

# Modeling
## Use postgresql as the database for Active Record
gem 'pg', '~> 0.18'
## Use has_secure_password
gem 'bcrypt', '~> 3.1.7'
## Automatically Eager Load
gem 'goldiloader'
## Enum Field
gem 'simple_enum'

# Data querying and processing
## GraphQL
gem 'graphql'
gem 'graphql-mutable_type'
gem 'graphql-libgraphqlparser', require: 'graphql/libgraphqlparser'
## Pagination
gem 'kaminari'
## Object Serializer
gem 'multi_json'
gem 'oj'

# Server
## CORS setup for APIs
gem 'rack-cors'
## Use Puma as the app server
gem 'puma'

group :development, :test, :staging do
  # Debugging
  gem 'byebug'
  gem 'pry-rails'

  # Testing
  gem 'rspec-rails', '~> 3.5.0.beta1'
  gem 'factory_girl_rails', '~> 4.0'
  gem 'database_cleaner'

  # Styling
  gem 'rubocop', require: false
  gem 'codeclimate-test-reporter', require: false

  # Documenting
  gem 'rails-erd'

  # Benchmarking
  gem 'benchmark-ips', require: 'benchmark/ips'
end

group :development, :staging do
  # Speed up development
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  # Deployer
  gem 'mina', require: false
  gem 'mina-multistage', require: false
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]