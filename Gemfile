source 'https://rubygems.org'

ruby File.read(".ruby-version").strip

gem 'rails', '4.2.1'

gem 'bootstrap-sass', '~> 3.3.0'
gem 'diffux-core', git: 'https://diffux-user:password101@github.com/springernature/diffux-core.git'
gem 'haml-rails', '~> 0.9.0'
gem 'paperclip', '~> 4.2.1'
gem 'pg', '~> 0.18.1'
gem 'rails-i18n', '~> 4.0.0'
gem 'sidekiq', '~> 3.3.4'
gem 'sinatra', '>= 1.3.0', require: nil # for sidekiq
gem 'turbolinks', '~> 2.5.3'
gem 'better_errors', '~> 2.1.1'
gem 'binding_of_caller', '~> 0.7.2'
gem 'flamegraph', '~> 0.1.0'
gem 'spring', '~> 1.3.5'
gem 'sqlite3', '~> 1.3.10'
gem 'phantomjs', '~> 2.1.1.0'

group :assets do
  gem 'autoprefixer-rails', '~> 5.1.11'
  gem 'coffee-rails', '~> 4.1.0'
  gem 'sass-rails',   '~> 5.0.0'
  gem 'uglifier',     '>= 1.0.3'
end

group :test do
  gem 'capybara', '~> 2.4.4'
  gem 'coveralls', require: false
  gem 'database_cleaner', '~> 1.4.1'
  gem 'factory_girl_rails', '~> 4.5.0'
  gem 'mocha', '~> 1.1.0'
  gem 'rspec', '~> 2.14.1'
  gem 'rspec-rails', '~> 2.14.2'
  gem 'poltergeist', '~> 1.6.0'
end

group :production do
  gem 'unicorn', '~> 4.9.0'
  gem 'rails_12factor', '~> 0.0.3'
  gem 'aws-sdk', '< 2.0'
end
