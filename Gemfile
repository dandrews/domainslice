source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'

# caching
gem 'memcachier', group: :production
gem 'dalli', group: :production

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'jquery-ui-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

group :development, :test do
  gem 'guard', '>= 2.2.2',  require: false
  gem 'guard-livereload',   require: false
  gem 'rack-livereload'
  gem 'rb-fsevent',         require: false
end

# twitter bootstrap
gem 'bootstrap-sass', '~> 3.0.3.0'
gem 'autoprefixer-rails'
gem "font-awesome-rails"
gem 'bootstrap-typeahead-rails'

# WHOIS
gem 'whois', '~> 3.5.5'
gem 'public_suffix', '~> 1.4.6'

# Zone Files
gem 'dns-zone'

# MongoDB, Mongoid, BSON
gem 'mongoid', '~> 4', github: 'mongoid/mongoid'
gem 'bson_ext'

group :development, :test do
  gem 'rspec-rails', '~> 3.0.0'
  gem "factory_girl_rails", "~> 4.0"
  gem 'simplecov', '~> 0.9'
end

ruby "2.1.1"