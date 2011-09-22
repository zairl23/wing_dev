class ShigesController < ApplicationController
   def index
    @shiges = Shige.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shiges }
    end
  end

  def show
    @jilu = Shige.count()
    @xia = params[:id].next.to_i
    @shang = params[:id].to_i-1
    @shige = Shige.find(params[:id])
    if(@xia>@jilu)
      @shigexia = @shige
    else
      @shigexia = Shige.find(@xia)
    end
    if(@shang!=0)
      @shigeshang = Shige.find(@shang)
     else @shigeshang = @shige
    end
    @poemtry = @shige.poemtry
   
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @shige }
    end
  end

end
