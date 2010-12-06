class CourseListsController < ApplicationController
  # GET /course_lists
  # GET /course_lists.xml
  def index
    @course_lists = CourseList.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @course_lists }
    end
  end

  # GET /course_lists/1
  # GET /course_lists/1.xml
  def show
    @course_list = CourseList.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @course_list }
    end
  end

  # GET /course_lists/new
  # GET /course_lists/new.xml
  def new
    @course_list = CourseList.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @course_list }
    end
  end

  # GET /course_lists/1/edit
  def edit
    @course_list = CourseList.find(params[:id])
  end

  # POST /course_lists
  # POST /course_lists.xml
  def create
    @course_list = CourseList.new(params[:course_list])

    respond_to do |format|
      if @course_list.save
        flash[:notice] = 'CourseList was successfully created.'
        format.html { redirect_to(@course_list) }
        format.xml  { render :xml => @course_list, :status => :created, :location => @course_list }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @course_list.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /course_lists/1
  # PUT /course_lists/1.xml
  def update
    @course_list = CourseList.find(params[:id])

    respond_to do |format|
      if @course_list.update_attributes(params[:course_list])
        flash[:notice] = 'CourseList was successfully updated.'
        format.html { redirect_to(@course_list) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @course_list.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /course_lists/1
  # DELETE /course_lists/1.xml
  def destroy
    @course_list = CourseList.find(params[:id])
    @course_list.destroy

    respond_to do |format|
      format.html { redirect_to(course_lists_url) }
      format.xml  { head :ok }
    end
  end
end
