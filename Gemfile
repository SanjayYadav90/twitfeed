source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.2'

# gem 'pg'
gem 'mysql2', '>= 0.3.18', '< 0.5'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'

gem 'bootstrap-sass', '~> 3.3.6'
gem 'twitter'
# gem 'redis', '~> 3.0'

gem 'capistrano-rails', group: :development
gem 'omniauth-twitter'
gem 'omniauth-facebook'
gem 'devise'
gem 'slim-rails'
gem 'geocoder'
gem 'whenever', :require => false
gem 'kaminari'

gem 'activeadmin'

group :development, :test do
gem 'figaro'
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
  gem 'zeus', require: false
  gem 'pry'
  gem 'rspec-rails'
end

group :development do
  gem 'awesome_print'
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'annotate'
end

group :test do
  gem 'faker'
  gem 'database_cleaner'
  gem 'factory_girl_rails'
  gem 'shoulda-matchers', '~> 3.1'
  gem 'rails-controller-testing'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
group :production do
  gem 'rails_12factor'
end
