# Inside: Rails.root/config/initializers/compass.rb
if Rails.env.production?
  require 'fileutils'
  FileUtils.mkdir_p(Rails.root.join("tmp", "stylesheets", "compiled"))
end



