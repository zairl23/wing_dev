class CommitsController < ApplicationController
  before_filter :find_commitable
  
  def new
    
    @commit = Commit.new
    
    respond_to do |format|
      format.html
    end
  end 
#create commit
  def create
   #只有会员才能发表评论
    if !current_user
      redirect_to new_user_session_path #返回到登录界面登录或注册
      return 1 ;
    end
    #新建并保存一个commit实例，并保存user_id
    @commit = Commit.create(params[:commit])
    @commit.user_id = current_user.id 
    @commit.commitable_type = commitable
    #指定保存后的页面跳转线路
    respond_to do |format|
      format.html { redirect_to :controller => @commitable.class.to_s.pluralize.downcase, :action => 'show', :id => params[:commitable_id] }
    end
  end
  
  private
  #通过表单的contoller值初始化@commitable
  def find_commitable
    @kclass = params[:commitable_type].capitalize.constantize#将:commitale_type转化为相应的类名
    @commitable = @kclass.find(params[:commitable_id])
  end
  
end
