class ShigesController < ApplicationController
   def index
    @shiges = Shige.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shiges }
    end
  end

  def show
    @shige = Shige.find(params[:id])
    @poemtry = @shige.poemtry
   
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @poemtry }
    end
  end

end
