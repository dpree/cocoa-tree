ruby '2.1.7'
source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.2'

group :production do
  # 12 Factor App compatibility
  gem 'rails_12factor'
end

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

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

gem 'slim-rails'

gem 'rspec'
gem 'guard-rspec'
gem 'guard-rake'
gem 'guard-sass'
gem 'slim'
gem 'sass'
gem 'actionpack'
gem 'activesupport'

gem 'bootstrap-sass'

gem 'skim'

gem 'capybara'
gem 'poltergeist'

group :test do
  gem 'rspec-rails'
end

group :test, :development do
  gem 'teaspoon' # js
end

gem 'rack-proxy'
gem 'rails-zero', '~> 0.2.0'

gem 'sprockets', '~> 2.11.0' # 2.12.0 doesnt work right now
                             # https://github.com/sstephenson/sprockets/issues/540
gem 'tilt', '~> 1.3.3'
