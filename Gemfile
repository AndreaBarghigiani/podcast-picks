source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# Default gems
gem 'bootsnap', '>= 1.4.2', require: false
gem 'jbuilder', '~> 2.7'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 5.2'
gem 'rails', '~> 6.1', '>= 6.1.3'
gem 'webpacker', '~> 5.0'

group :test do
  ## Defaults
  gem 'apparition'
  gem 'capybara', '>= 2.15'

  ## Odd Camp
  gem 'simplecov', require: false
end

group :development do
  ## Defaults
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'web-console', '>= 3.3.0'

  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  ## Odd Camp
  gem 'better_errors'
end

group :development, :test do
  ## Defaults
  gem 'byebug', platforms: %i[mri mingw x64_mingw]

  ## Odd Camp
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'letter_opener'
  gem 'pry-rails'
  gem 'rspec-rails', '~> 3.5'
end

group :production do
  ## Odd Camp
  gem 'rack-timeout'
  gem 'sentry-rails'
  gem 'sentry-ruby'
end

## Views
gem 'inline_svg', '~> 1.7', '>= 1.7.2'
gem 'safe_target_blank', '~> 1.0', '>= 1.0.2'
gem 'view_component', '~> 2.26', require: 'view_component/engine'
