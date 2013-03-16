module SessionsHelper

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def user_signed_in?
   !current_user.nil? 
  end

  def authorize
    deny_access if !user_signed_in?
  end

  def deny_access
    redirect_to login_path, alert: "Not authorized"
  end
end
