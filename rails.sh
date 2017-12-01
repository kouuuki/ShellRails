APPNAME = "アプリ名"

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

  gem 'active_model_serializers'
end

group :test, :development do
  gem 'sqlite3'
end

group :development do
  gem 'spring'
  gem 'spring-commands-rspec'

  gem 'pry-rails'
  gem 'pry-doc'
  gem 'pry-stack_explorer'
  gem 'pry-byebug'

  gem 'guard'
  gem 'guard-rspec'
  gem 'guard-spring'

  gem 'better_errors'
  gem 'binding_of_caller'

  gem 'rack-mini-profiler'
  gem 'bullet'
  gem 'quiet_assets'
  gem 'rails_best_practices'
  gem 'did_you_mean'

  gem 'annotate'
end

group :test do
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'database_rewinder'
  gem 'rspec-request_describer'
  gem 'autodoc'
  gem 'json_spec'
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
