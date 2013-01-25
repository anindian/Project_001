class ApplicationController < ActionController::Base
  protect_from_forgery

  def init_current_user
    @user = User.find_by_id(session[:user_id])
  end

  def user_is_logged_in?
    !session[:user_id].nil?
  end

end
