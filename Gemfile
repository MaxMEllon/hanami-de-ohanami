source 'https://rubygems.org'

gem 'hanami',       '~> 1.0'
gem 'hanami-model', '~> 1.0'
gem 'hanami-serializer', git: 'https://github.com/davydovanton/hanami-serializer'
gem 'lotus-view'
gem 'rake'
gem 'slim'
gem 'sqlite3'
gem 'jwt'

group :development do
  gem 'shotgun'
end

group :test, :development do
  gem 'dotenv', '~> 2.0'
  gem 'pry'
  gem 'pry-byebug'
  gem 'rubocop'
end

group :test do
  gem 'minitest'
  gem 'capybara'
end

group :production do
  gem 'puma'
end
