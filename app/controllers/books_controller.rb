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
   
    respond_to do |format|
      format.html # show.html.erb
    
    end
  end
end
