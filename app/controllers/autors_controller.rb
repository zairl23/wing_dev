class AutorsController < ApplicationController
  def index
      @autors = Autor.all
      
      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @autors }
    end
  end

  def show
      @autor = Autor.find(params[:id])
      @albums = @autor.albums
      @books = @autor.books
      respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @autor }
      format.json { render json: @albums }
     end
  end
end
