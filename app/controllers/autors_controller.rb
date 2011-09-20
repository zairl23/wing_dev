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
      @albums =Autor.albums
      respond_to do |format|
      format.html # show.html.erb
     end
  end
end
