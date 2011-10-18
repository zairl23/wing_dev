class XinwensController < ApplicationController
  # GET /xinwens
  # GET /xinwens.json
  def index
    @xinwens = Xinwen.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @xinwens }
    end
  end

  # GET /xinwens/1
  # GET /xinwens/1.json
  def show
    @xinwen = Xinwen.find(params[:id])
    @commits = @xinwen.commits
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @xinwen }
    end
  end

  # GET /xinwens/new
  # GET /xinwens/new.json
  def new
    @xinwen = Xinwen.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @xinwen }
    end
  end

  # GET /xinwens/1/edit
  def edit
    @xinwen = Xinwen.find(params[:id])
  end

  # POST /xinwens
  # POST /xinwens.json
  def create
    @xinwen = Xinwen.new(params[:xinwen])

    respond_to do |format|
      if @xinwen.save
        format.html { redirect_to @xinwen, notice: 'Xinwen was successfully created.' }
        format.json { render json: @xinwen, status: :created, location: @xinwen }
      else
        format.html { render action: "new" }
        format.json { render json: @xinwen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /xinwens/1
  # PUT /xinwens/1.json
  def update
    @xinwen = Xinwen.find(params[:id])

    respond_to do |format|
      if @xinwen.update_attributes(params[:xinwen])
        format.html { redirect_to @xinwen, notice: 'Xinwen was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @xinwen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /xinwens/1
  # DELETE /xinwens/1.json
  def destroy
    @xinwen = Xinwen.find(params[:id])
    @xinwen.destroy

    respond_to do |format|
      format.html { redirect_to xinwens_url }
      format.json { head :ok }
    end
  end
  
#add commit 
  def new_commit
    @xinwen = Xinwen.find(params[:xinwen_id])
    @commit = @xinwen.commits.build
   
    respond_to do |format| 
      format.html
    end 
  end

#save commit
  def save_commit
    #判断是否登录
    if !current_user
      redirect_to new_user_session_path
      return 1 ;
    end
    
    @xinwen = Xinwen.find(params[:xinwen_id])
    @commit = @xinwen.commits.build(params[:xinwen][:commit])
    @commit.user_id = current_user.id
    respond_to do |format|
      if @commit.save! 
        format.html { redirect_to @xinwen, :notice => 'your commit is saved!'}
      else
        format.html { render :action => 'new_commit'}
      end
    end
  end
end
