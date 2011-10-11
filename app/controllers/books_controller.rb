class BooksController < ApplicationController
   def index
     @books = Book.all
      
      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @books }
    end
  end
    
  def show
    @book = Book.find(params[:id])
    @autor = @book.autor
    @commits = @book.commits
    
    respond_to do |format|
      format.html # show.html.erb
    
    end
  end
  


  def new_commit
    @book = Book.find(params[:book_id])
    @commit = @book.commits.build
    
    respond_to do |format|
      format.html
    end
  end
  
  def save_commit
    if !current_user
    redirect_to new_user_session_path
    return 1 ;
  end
  @book = Book.find(params[:book_id])
  @commit = @book.commits.build(params[:book][:commit])
  @commit.user_id = current_user.id
  #@commit.book = @book
  
   respond_to do |format|
     if @commit.save
       format.html { redirect_to @book } 
     else
       format.html { render :action => 'new'}
     end
   end
end
 
end
