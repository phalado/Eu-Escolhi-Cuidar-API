source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.6'

gem 'rails', '~> 6.0.3', '>= 6.0.3.2'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.1'
gem 'devise'
gem 'simple_token_authentication'
gem 'bcrypt', '~> 3.1.7'
# gem 'jbuilder', '~> 2.7'
# gem 'redis', '~> 4.0'

# gem 'image_processing', '~> 1.2'

gem 'bootsnap', '>= 1.4.2', require: false
gem 'rack-cors'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rubocop'
end

group :development do
  gem 'listen', '~> 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'capybara', '~> 2.7', '>= 2.7.1'
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'fakeredis', require: 'fakeredis/rspec'
  gem 'ffaker'
  gem 'rack_session_access'
  gem 'rails-controller-testing'
  gem 'rspec-expectations'
  gem 'rspec-rails', '~> 4.0.0'
  gem 'rspec-sidekiq', '~> 2.2'
  gem 'selenium-webdriver', '~> 3.142.7'
  gem 'shoulda-matchers', '~> 4.0'
  gem 'simplecov'
  gem 'webdrivers', '~> 4.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
