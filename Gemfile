source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.6'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# User for make athetification
gem 'devise'
# gem 'therubyracer', platforms: :ruby

# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# gem use for work with materilize css
gem 'materialize-sass'
# gem for use jquery
gem 'jquery-rails'
# gem for create faker methods
gem 'faker', :git => 'https://github.com/stympy/faker.git', :branch => 'master'

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development



group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
  # Gem for make a test
   gem 'rspec-rails', '~> 3.7'
   # gem use for create a custom values
   gem 'factory_bot_rails'
   # use this for make test for controller
   gem 'rails-controller-testing'
   # Strategies for cleaning databases in Ruby. Can be used to ensure a clean state for testing.
   gem 'database_cleaner'
   # use for simulate hour
   gem 'timecop'
   # use for work with expectations
   gem 'rspec-expectations'
   # Fuubar is an instafailing RSpec formatter that uses a progress bar instead of a string of letters and dots as feedback.
   gem 'fuubar'
   # Collection of testing matchers extracted from Shoulda http://matchers.shoulda.io
   gem 'shoulda-matchers', '3.0.0.rc1'



end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
