source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.6.3"

gem "bootsnap", ">= 1.2.0", require: false
gem "pg", ">= 0.18"
gem "puma", "~> 3.11"
gem "rails", "~> 5.2.0"
gem "sass-rails", "~> 5.0"
gem 'turbolinks', '~> 5'
gem 'mini_magick', '~> 4.8'
gem 'uglifier', '>= 1.3.0'
gem 'rspotify'

gem 'webpacker'
gem 'react-rails', git: "https://github.com/reactjs/react-rails.git", branch: "master"
gem 'fast_jsonapi'

group :development do
  gem 'bullet'
  gem 'rails-erd'
  gem "awesome_print"
  gem "table_print"
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem "xray-rails", ">= 0.1.18"
  gem "better_errors"
  gem "binding_of_caller"
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end
