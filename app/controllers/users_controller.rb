class UsersController < ApplicationController
	before_filter :login_required, :only => [:edit, :update]
  def show_by_username
    @user = User.find_by_username(params[:username])
    render :action => 'show'
  end

  def edit
    @user = logged_in_user
  end
  def update
    @user = User.find(logged_in_user)
    if @user.update_attributes(params[:user])
      flash[:notice] = "User updated"
      redirect_to index_url 
    else
      render :action => 'edit'
    end
  end
  
end
  