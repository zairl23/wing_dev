# This file is used by Rack-based servers to start the application.

#require ::File.expand_path('../config/environment',  __FILE__)

if Compass::AppIntegration::Rails.env == "production"
#use Rack::Static, :urls => ["/stylesheets/compiled"], :root => "tmp" #FOR COMPASS
#end
require ::File.expand_path('../config/environment', __FILE__)
use Rack::Static, :urls => ["/stylesheets/compiled"], :root => "tmp"

run WingDev::Application
