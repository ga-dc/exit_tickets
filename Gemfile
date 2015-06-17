source 'https://rubygems.org'

# Core
gem 'rails', '4.2.1'
gem 'pg'                    # Postgres for the database
gem 'bcrypt', '~> 3.1.7'    # Use ActiveModel has_secure_password

# Assets
gem 'sass-rails', '~> 5.0'  # Use SCSS for stylesheets
gem 'jquery-rails'          # Use jquery as the JavaScript library
gem 'uglifier', '>= 1.3.0'  # Use Uglifier as compressor for JavaScript assets
gem 'bourbon'
gem 'neat'

# Other
gem 'simple_form'
gem 'haml-rails', '~> 0.9'


# Development
group :development, :test do
  gem 'pry-byebug'          # switch rails console to use pry instead of irb
  gem 'better_errors'       # improved rails error pages
  gem 'binding_of_caller'   # adds a REPL to better_errors pages
  gem 'meta_request'        # required for the RailsPanel Chrome extension
  gem 'rack-mini-profiler'  # include information on timing for each requests
  gem 'quiet_assets'        # prevents requests for static assets busying your logs
  gem 'awesome_print'       # format output on the console to be even nicer

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end
