
class ApplicationController < ActionController::Base
  #protect_from_forgery
   
  layout :layout_by_resource

  
    #add commit 
  def new_commit
    
    @commitable = Commitable.find(params[commitable_id])
    @commit = @commitable.commits.build
    
    respond_to do |format| 
      format.html
    end 
  end

#save commit
  def save_commit
    #判断是否登录
    if !current_user
      redirect_to new_user_session_path
      return 1 ;
    end
   
    @commitable = Commitable.find(params[:commitable_id])
    @commit = @commitable.commits.build(params[:commitable][:commit])
    @commit.user_id = current_user.id
    respond_to do |format|
      if @commit.save! 
        format.html { redirect_to @commitable, :notice => 'your commit is saved!'}
      else
        format.html { render :action => 'new_commit'}
      end
    end
  end
  
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
  def after_sign_out_path_for(commitable_or_scope)
    root_path
  end
  # Overwriting the sign_in redirect path method
 # def after_sign_in_path_for(commitable_or_scope)
 #     stored_location_for(:user) || root_path
  #end
 # def sign_in_and_redirect_to
  #  stored_location_for(:user)
 # end
  # add new_commit and save_commit to books,albums,musics,autors,...

       
end
