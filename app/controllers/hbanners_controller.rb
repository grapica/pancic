class HbannersController < ApplicationController
	before_filter :login_required
  # GET /hbanners
  # GET /hbanners.xml
  def index
        @hbanners_pages, @hbanners = paginate(:hbanners,
		:per_page => 5, 
		:order  => 'hbanners.updated_at DESC')

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @hbanners }
    end
  end

  # GET /hbanners/1
  # GET /hbanners/1.xml
  def show
    @hbanner = Hbanner.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @hbanner }
    end
  end

  # GET /hbanners/new
  # GET /hbanners/new.xml
  def new
    @hbanner = Hbanner.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @hbanner }
    end
  end

  # GET /hbanners/1/edit
  def edit
    @hbanner = Hbanner.find(params[:id])
  end

  # POST /hbanners
  # POST /hbanners.xml
  def create
    @hbanner = Hbanner.new(params[:hbanner])

    respond_to do |format|
      if @hbanner.save
        flash[:notice] = 'Hbanner was successfully created.'
        format.html { redirect_to(@hbanner) }
        format.xml  { render :xml => @hbanner, :status => :created, :location => @hbanner }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @hbanner.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /hbanners/1
  # PUT /hbanners/1.xml
  def update
    @hbanner = Hbanner.find(params[:id])

    respond_to do |format|
      if @hbanner.update_attributes(params[:hbanner])
        flash[:notice] = 'Hbanner was successfully updated.'
        format.html { redirect_to(@hbanner) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @hbanner.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /hbanners/1
  # DELETE /hbanners/1.xml
  def destroy
    @hbanner = Hbanner.find(params[:id])
    @hbanner.destroy

    respond_to do |format|
      format.html { redirect_to(hbanners_url) }
      format.xml  { head :ok }
    end
  end
end
