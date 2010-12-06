class AreasController < ApplicationController
before_filter :login_required, :only => [:edit, :update, :new, :create, :destroy]
  # GET /areas
  # GET /areas.xml
  def index
    @areas = Area.all
	@posts = Post.find_by_sql("SELECT * from posts ORDER BY updated_at DESC LIMIT 4")
	@topposts = Post.find_by_sql("SELECT * from posts WHERE top='1' ORDER BY RAND() LIMIT 4")
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @areas }
    end
  end

  # GET /areas/1
  # GET /areas/1.xml
  def show

	  redirect_to area_categories_path(:area_id => params[:id])

  end

  # GET /areas/new
  # GET /areas/new.xml
  def new
    @area = Area.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @area }
    end
  end

  # GET /areas/1/edit
  def edit
    @area = Area.find(params[:id])
  end

  # POST /areas
  # POST /areas.xml
  def create
    @area = Area.new(params[:area])

    respond_to do |format|
      if @area.save
        flash[:notice] = 'Area was successfully created.'
        format.html { redirect_to(@area) }
        format.xml  { render :xml => @area, :status => :created, :location => @area }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @area.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /areas/1
  # PUT /areas/1.xml
  def update
    @area = Area.find(params[:id])

    respond_to do |format|
      if @area.update_attributes(params[:area])
        flash[:notice] = 'Area was successfully updated.'
        format.html { redirect_to(@area) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @area.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /areas/1
  # DELETE /areas/1.xml
  def destroy
    @area = Area.find(params[:id])
    @area.destroy

    respond_to do |format|
      format.html { redirect_to(areas_url) }
      format.xml  { head :ok }
    end
  end
end
