class AccountsController < ApplicationController

  layout 'account'

  def index
    init_current_user
  end

  def show
    init_current_user
  end

  def login
    user = User.find_by_username(params[:form][:username])
    if user
      session[:user_id] = user.id
      redirect_to :action => :index
    else
      redirect_to root_path
    end
  end

  def logout
    reset_session
    redirect_to root_path
  end

  def new
    render :layout => 'home'
  end

  def create
    user_type = UserType.find_by_permalink("free")
    user = user_type.users.new(params[:form])
    user.save!
    session[:user_id] = user.id
    redirect_to :action => :index
  end

  def destroy
  end

end
