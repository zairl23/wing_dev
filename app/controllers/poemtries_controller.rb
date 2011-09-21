class PoemtriesController < ApplicationController
  def index
    @poemtries = Poemtry.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @poemtries}
    end
  end
    def show
    @poemtry = Poemtry.find(params[:id])
    @autor = @poemtry.autor
    @shiges = @poemtry.shiges
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @poemtry }
    end
  end

end
