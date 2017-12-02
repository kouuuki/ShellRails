APPNAME="ppap"

rails new $APPNAME -b
cd $APPNAME
# gemfileの作成
cat << EOF > Gemfile
source 'https://rubygems.org'

group :default do
  gem 'rails'
  gem 'sass-rails'
  gem 'uglifier'
  gem 'coffee-rails'
  gem 'devise'
end

group :test, :development do
  gem 'sqlite3'
end

group :development do
  gem 'spring'

  gem 'pry-rails'
  gem 'pry-byebug'

  gem "rspec-expectations"
  gem "rspec-mocks"
  gem "rspec-core"
  gem 'guard-rspec'
  gem 'guard-spring'

  gem 'better_errors'
  gem 'binding_of_caller'

  gem 'bullet'
  gem 'rails_best_practices'
  gem 'did_you_mean'

  gem 'annotate'
end

group :test do
  gem 'rspec-rails'
  gem 'factory_girl_rails'
end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', '~> 0.4.0'
end
EOF

# bundle install
bundle exec bundle install

# rspec install
rails g rspec:install

# devise install
rails g devise:install
rails g devise:views
rails g devise user
rake db:migrate
