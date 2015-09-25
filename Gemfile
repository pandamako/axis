source 'https://rubygems.org'

gem 'rails'

gem 'pg'
gem 'dalli'
gem 'uglifier'
gem 'coffee-rails'

gem 'sass-rails'
gem 'sprockets-rails'
gem 'compass-rails', github: "Compass/compass-rails", branch: "master"

gem 'slim-rails'
gem 'jbuilder'

gem 'unicorn'
gem 'jquery-rails'
gem 'turbolinks'

gem 'simple_form'
gem 'simple_form-magic_submit', github: 'morr/simple_form-magic_submit'

gem 'ruby-trello', github: 'pandamako/ruby-trello'

gem 'awesome_print'
gem 'pry-rails'
gem 'pry-stack_explorer'
gem 'byebug'
gem 'pry-byebug'
gem 'marco-polo'

gem 'unicode'
gem 'rs_russian'

gem 'devise'
gem 'devise-async' # асинхронная отсылка писем для devise

gem 'meta-tags', require: 'meta_tags'
gem 'enumerize'
gem 'virtus' # для создания объектов с типизированными атрибутами (Rookee::RoostatQuery)
gem 'active_cacher'

gem 'pghero'
gem 'whenever', require: false
gem 'typhoeus'
gem 'attr_extras'
gem 'active_model_serializers'

gem 'faraday' # для http запросов
#gem 'faraday_middleware'
#gem 'faraday-cookie_jar'

gem 'draper' # presenters
gem 'cancancan', github: 'morr/cancancan', branch: 'master' # подумать над попробовать https://github.com/the-teacher/the_role

gem 'state_machines-activerecord'
gem 'activerecord-import'

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'bullet'

  gem 'capistrano', require: false
  gem 'capistrano-rails', require: false
  gem 'capistrano-bundler', require: false
  gem 'capistrano-file-permissions', require: false, github: 'morr/file-permissions'
  gem 'rvm1-capistrano3', require: false
  gem 'airbrussh', require: false
end

group :development, :staging do
  gem 'rails_db_info'
end

group :development, :test do
  gem 'quiet_assets'

  gem 'rb-inotify', require: false
  gem 'rb-fsevent', require: false
  gem 'rb-fchange', require: false

  gem 'rspec'
  gem 'rspec-rails'
  gem 'rspec-mocks'
  gem 'rspec-collection_matchers'
  gem 'rspec-its'

  gem 'chunky_png'
  gem 'spring'
  gem 'spring-commands-rspec'

  gem 'timecop'

  gem 'guard', require: false
  gem 'guard-rspec', require: false
  gem 'guard-bundler', require: false
  gem 'guard-spring', require: false
  gem 'guard-pow', require: false
end

group :test do
  gem 'factory_girl_rails', require: false
  gem 'factory_girl-seeds', require: false
  gem 'webmock'
  gem 'shoulda-matchers'
  gem 'database_cleaner'
  gem 'capybara'
  gem 'vcr', github: 'morr/vcr' # TODO: убрать github опцию, когда примут пулреквест vcr/vcr: Pull Request #418
  gem 'codeclimate-test-reporter', require: false
end

# assets
source 'https://rails-assets.org' do
  gem 'rails-assets-d3'
  gem 'rails-assets-jquery'
  gem 'rails-assets-magnific-popup'
  gem 'rails-assets-jquery-tokeninput'
  gem 'rails-assets-moment'
  gem 'rails-assets-jquery-date-range-picker'
  gem 'rails-assets-js-cookie'
  gem 'rails-assets-jquery.scrollTo'

  # gem 'rails-assets-pusher'
  # gem 'rails-assets-toastr'
end
