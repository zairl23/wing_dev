source 'http://rubygems.org'

gem 'rails'


# Bundle edge Rails instead:

#gem 'rails',     :git => 'git://github.com/rails/rails.git'

#gem 'sqlite3'

   # Devise must be required before RailsAdmin
gem 'devise'
gem 'rails_admin', :git => 'git://github.com/sferik/rails_admin.git'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'
  gem 'uglifier'
end

gem 'jquery-rails'
# ney chang add on "2011-9-11" to fix heroku problem.
gem 'therubyracer-heroku', '0.8.1.pre3'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :test do
  # Pretty printed test output
  gem 'turn', :require => false
end

group :production do
  gem "pg"
 
end

group :development, :test do
  gem 'sqlite3'
end
#use FCKEditor
gem 'fckeditor'
gem "compass", ">= 0.11.5"
gem 'ckeditor', :git => "https://github.com/galetahub/ckeditor.git"
gem 'paperclip'
gem 'rb-inotify'
gem 'haml-rails',:git => "https://github.com/indirect/haml-rails.git"
gem 'cancan'

