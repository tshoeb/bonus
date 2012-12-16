source 'https://rubygems.org'

gem 'heroku'
gem 'bcrypt-ruby'
gem 'rails'
gem 'jquery-rails'
gem 'execjs'
gem "therubyracer", "~> 0.11.0"
gem 'bootstrap-sass'
gem 'carrierwave'
gem "libv8", "~> 3.11.8.4"
gem 'therubyracer-heroku', '0.8.1.pre3'


# for deployment on Heroku

group :development, :test do
  gem 'rspec-rails'
  gem 'sqlite3'
end

group :production do
  gem 'pg'
  gem 'thin'
end

group :test do
  gem 'factory_girl_rails'
  gem 'cucumber-rails'
  gem 'capybara'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'shoulda-matchers'
end
# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'
  gem 'uglifier'
end



