#require 'compass'
#require 'compass/app_integration/rails'
#Compass::AppIntegration::Rails.initialize!

#if Compass::AppIntegration::Rails.env == "production"
 # require 'fileutils'
  #FileUtils.mkdir_p(Rails.root.join("tmp", "stylesheets", "compiled"))
#end
if Compass::AppIntegration::Rails.env
  require 'fileutils'
  FileUtils.mkdir_p(Rails.root.join("tmp", "stylesheets","compiled"))

  Rails.configuration.middleware.insert_before('Rack::Sendfile', 'Rack::Static',
    :urls => ['/stylesheets/compiled'],
    :root => "#{Rails.root}/tmp")
end


