class UfoController < ApplicationController
  def index
      @ufos = Ufo.all
      
      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @ufos }
    end
  end

end
