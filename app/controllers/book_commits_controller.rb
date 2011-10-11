class BookCommitsController < ApplicationController
  before_filter :find_book
			
def index
 
  @commits = @book.commits
  
  respond_to do |format|
    format.html
  end
end

def show
  @commit = @book.commits.find( params[:id] )
end

def new
  @commit = @book.commits.build
  

end

def create
  if !current_user
    redirect_to new_user_session_path
    return 1 ;
  end
  @commit = @book.commits.build(params[:commit])
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



def edit
  @commit = @book.commits.find( params[:id] )
end

def update
  @commit = @book.commits.find( params[:id] )
  
  if @commit.update_attributes( params[:commit] )
    redirect_to book_commits_url( @book )
  else
    render :new
  end
    
end

def destroy
  @commit = @book.commits.find( params[:id] )
  @commit.destroy
  
  redirect_to book_commits_url( @book )
end

private
  
def find_book
  if Book.exists? params[:book_id]
     @book = Book.find(params[:book_id])
  else
    redirect_to books_path
  end
end			
end
