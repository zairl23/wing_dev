class Users::RegistrationsController < Devise::RegistrationsController
  @current_user = current_user
  
end
