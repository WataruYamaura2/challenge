ruby '2.2.3'

source 'https://rubygems.org' do
  gem 'coffee-rails'
  gem 'dotenv-rails'
  gem 'jbuilder'
  gem 'jquery-rails'
  gem 'mysql2', '~> 0.3.20'
  gem 'rails', '4.2.4'
  gem 'sass-rails'
  gem 'slim-rails'
  gem 'uglifier'
  gem 'virtus'
  gem 'turbolinks'

  group :doc do
    gem 'yard'
  end

  gem 'web-console', group: :development

  group :development, :test do
    gem 'better_errors'
    gem 'bullet'
    gem 'capybara'
    gem 'capybara-screenshot'
    gem 'factory_girl_rails'
    gem 'ffaker'
    gem 'json_expressions'
    gem 'launchy'
    gem 'poltergeist'
    gem 'pry-byebug'
    gem 'pry-rails'
    gem 'rubocop', require: false
  end

  group :test do
    gem 'database_rewinder'
    gem 'rspec-rails'
    gem 'rspec_junit_formatter'
    gem 'simplecov', require: false
  end

  group :production do
    gem 'unicorn', '~> 4.9.0'
  end
end

source 'https://rails-assets.org' do
  gem 'rails-assets-es5-shim', '4.1.10'
  gem 'rails-assets-fontawesome', '4.3.0'
end
