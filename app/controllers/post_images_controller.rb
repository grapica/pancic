class PostImagesController < ApplicationController
before_filter :login_required, :only => [:edit, :update, :new, :create, :destroy]
  # GET /post_images
  # GET /post_images.xml
  before_filter :load_post
  def load_post
    @post = Post.find(params[:post_id])
  end
  
  def index
    @post_images = PostImage.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post_images }
    end
  end

  # GET /post_images/1
  # GET /post_images/1.xml
  def show
    @post_image = PostImage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post_image }
    end
  end

  # GET /post_images/new
  # GET /post_images/new.xml
  def new
	@post_image = @post.post_images.build

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post_image }
    end
  end

  # GET /post_images/1/edit
  def edit
    @post_image = PostImage.find(params[:id])
  end

  # POST /post_images
  # POST /post_images.xml
  def create
      @post_image = @post.post_images.build(params[:post_image])

    respond_to do |format|
      if @post_image.save
        flash[:notice] = 'PostImage was successfully created.'
        format.html { redirect_to post_path(@post) }
        format.xml  { render :xml => @post_image, :status => :created, :location => @post_image }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post_image.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post_images/1
  # PUT /post_images/1.xml
  def update
    @post_image = PostImage.find(params[:id])

    respond_to do |format|
      if @post_image.update_attributes(params[:post_image])
        flash[:notice] = 'PostImage was successfully updated.'
        format.html { redirect_to(@post_image) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post_image.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post_images/1
  # DELETE /post_images/1.xml
  def destroy
    @post_image = PostImage.find(params[:id])
    @post_image.destroy

    respond_to do |format|
      format.html { redirect_to post_path(@post) }
      format.xml  { head :ok }
    end
  end
end
