class ApplicationController < ActionController::Base
  #protect_from_forgery
  layout :layout_by_resource

  protected

  def layout_by_resource
    if devise_controller?
      "devise"
    else
      "application"
    end
  end
  
  private

  # Overwriting the sign_out redirect path method
  def after_sign_out_path_for(resource_or_scope)
    root_path
  end
  # Overwriting the sign_in redirect path method
  def after_sign_in_path_for(resource_or_scope)
    edit_user_registration_path
  end
end
