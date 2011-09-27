class TupiansController < ApplicationController
  # GET /tupians
  # GET /tupians.json
  def index
    @tupians = Tupian.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tupians }
    end
  end

  # GET /tupians/1
  # GET /tupians/1.json
  def show
    @tupian = Tupian.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tupian }
    end
  end

  # GET /tupians/new
  # GET /tupians/new.json
  def new
    @tupian = Tupian.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tupian }
    end
  end

  # GET /tupians/1/edit
  def edit
    @tupian = Tupian.find(params[:id])
  end

  # POST /tupians
  # POST /tupians.json
  def create
    @tupian = Tupian.new(params[:tupian])

    respond_to do |format|
      if @tupian.save
        format.html { redirect_to @tupian, notice: 'Tupian was successfully created.' }
        format.json { render json: @tupian, status: :created, location: @tupian }
      else
        format.html { render action: "new" }
        format.json { render json: @tupian.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tupians/1
  # PUT /tupians/1.json
  def update
    @tupian = Tupian.find(params[:id])

    respond_to do |format|
      if @tupian.update_attributes(params[:tupian])
        format.html { redirect_to @tupian, notice: 'Tupian was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @tupian.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tupians/1
  # DELETE /tupians/1.json
  def destroy
    @tupian = Tupian.find(params[:id])
    @tupian.destroy

    respond_to do |format|
      format.html { redirect_to tupians_url }
      format.json { head :ok }
    end
  end
end
