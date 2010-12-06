class VbannersController < ApplicationController
	before_filter :login_required
  # GET /vbanners
  # GET /vbanners.xml
  def index

    @vbanners_pages, @vbanners = paginate(:vbanners,
		:per_page => 5, 
		:order  => 'vbanners.updated_at DESC')

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @vbanners }
    end
  end

  # GET /vbanners/1
  # GET /vbanners/1.xml
  def show
    @vbanner = Vbanner.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @vbanner }
    end
  end

  # GET /vbanners/new
  # GET /vbanners/new.xml
  def new
    @vbanner = Vbanner.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @vbanner }
    end
  end

  # GET /vbanners/1/edit
  def edit
    @vbanner = Vbanner.find(params[:id])
  end

  # POST /vbanners
  # POST /vbanners.xml
  def create
    @vbanner = Vbanner.new(params[:vbanner])

    respond_to do |format|
      if @vbanner.save
        flash[:notice] = 'Vbanner was successfully created.'
        format.html { redirect_to(@vbanner) }
        format.xml  { render :xml => @vbanner, :status => :created, :location => @vbanner }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @vbanner.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /vbanners/1
  # PUT /vbanners/1.xml
  def update
    @vbanner = Vbanner.find(params[:id])

    respond_to do |format|
      if @vbanner.update_attributes(params[:vbanner])
        flash[:notice] = 'Vbanner was successfully updated.'
        format.html { redirect_to(@vbanner) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @vbanner.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /vbanners/1
  # DELETE /vbanners/1.xml
  def destroy
    @vbanner = Vbanner.find(params[:id])
    @vbanner.destroy

    respond_to do |format|
      format.html { redirect_to(vbanners_url) }
      format.xml  { head :ok }
    end
  end
end
