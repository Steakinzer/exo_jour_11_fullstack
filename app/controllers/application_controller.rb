class ApplicationController < ActionController::Base
  helper_method :current_user
  helper_method :logged_in?
  helper_method :my_potin?
  def current_user
    User.find_by(id: session[:user_id])
  end
  def logged_in?
    !!current_user
  end

  def my_potin?
    current_user.id == Flopssip.find(params[:id]).user_id
  end
  
end
