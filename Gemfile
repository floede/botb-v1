source 'https://rubygems.org'

# Hjemme PC
# ruby '1.9.3'
# Ruby version for Heroku
# ruby '2.1.0'
# Ruby version for Vagrant
# ruby '2.1.2'
# Ruby version for Digital Ocean
ruby '2.1.3'

gem 'dotenv-rails', :groups => [:development, :test]

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.4'
gem 'webrick', '1.3.1'
gem 'sass-rails', '~> 4.0.3'
gem 'foundation-rails'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'high_voltage'
gem 'gibbon'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

gem 'simple_form'

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
gem 'unicorn', '~> 4.8.3'

# Use debugger
# gem 'debugger', group: [:development, :test]

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
# gem 'tzinfo-data', platforms: [:mingw, :mswin]

# Devise for authentication
gem 'therubyracer'
gem 'devise'
gem 'omniauth'
gem 'omniauth-facebook'

group :development do
	gem 'sqlite3'
	gem 'better_errors'
	gem 'quiet_assets'
	gem 'rails_layout'
    gem 'guard'
    gem 'guard-livereload', require: false
	gem 'capistrano', '~> 3.2.1'
	gem 'capistrano-rails', '~> 1.1.1'
	gem 'capistrano-bundler'
	gem 'capistrano-rvm'
end
group :production do
	gem 'thin'
	gem 'mysql2'
	# gem 'rails_12factor'
end
