class BooksController < ApplicationController
   def index
      @books = Book.all
      
      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @ufos }
    end
  end
    
  def show
    @book = Book.find(params[:id])
    @id = @book.autor_id
    @autor=Autor.find(@id)
    respond_to do |format|
      format.html # show.html.erb
    
    end
  end
end
